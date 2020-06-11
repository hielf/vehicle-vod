module Api
  module V1
    class ColumnsController < Api::V1::ApplicationController
      before_action :authenticate_user!, only: [:create, :update_nav_columns]

      # 获取标签列表
      # GET /api/v1/columns

      def index
        optional! :nav_column, values: %w(true) ## get nav columns
        optional! :is_hot, values: %w(true) ## get hot columns
        optional! :page, default: 1
        optional! :per, default: 20, values: 1..100
        optional! :status, values: %w(0 1)
        status = params[:status]
        is_hot = params[:is_hot]
        nav_column = params[:nav_column]
        columns = Column.left_joins(:category).order(sort: :asc).select(:id, :name, :en_name, :category_id, 'categories.name as category_name', :sort, :status, :keyword)
        if status.present?
          columns = columns.where('columns.status=?', status)
        end
        if is_hot.present?
          columns = columns.where('columns.is_hot=?', is_hot)
        end
        if nav_column.present?
          if current_user.present? && current_user.edit_nav_columns
            columns = current_user.columns
          else
            columns = columns.where('columns.status=?', 1).limit(10)
          end
        end
        columns_length = columns.length
        if columns_length > params[:per].to_i
          page_columns = columns.page(params[:page]).per(params[:per])
        else
          page_columns = columns
        end
        render json: {code: 0, message: columns_length > 0 ? '获取成功' : '暂无数据', data: {columns_count: columns_length, columns: page_columns}}
      end

      # 创建新标签
      # POST /api/v1/columns

      def create
        raise AccessDenied unless can?(:manage, Column)

        requires! :name, type: String
        requires! :en_name, type: String
        requires! :category_id, type: Integer
        requires! :status, type: Integer, values: %w(0 1)
        optional! :keyword, type: String

        column = Column.create(name: params[:name],
                               en_name: params[:en_name],
                               category_id: params[:category_id],
                               status: params[:status],
                               keyword: params[:keyword])
        if column.save
          render_json(0, '创建成功')
        else
          render_json(1, first_error(column))
        end

      end

      # 编辑栏目
      # PATCH /api/v1/columns/:id

      def update
        raise AccessDenied unless can?(:manage, Column)
        requires! :id, type: Integer
        requires! :name, type: String
        requires! :en_name, type: String
        requires! :category_id, type: Integer
        requires! :status, type: Integer, values: %w(0 1)
        optional! :keyword, type: String
        optional! :sort, type: Integer

        column = Column.find(params[:id])
        if column.update(name: params[:name], en_name: params[:en_name], category_id: params[:category_id], status: params[:status], keyword: params[:keyword], sort: params[:sort])
          render_json(0, '更新成功')
        else
          render_json(1, first_error(column))
        end
      end


      # 更新个人导航栏目
      # post /api/v1/columns/update_nav_columns

      def update_nav_columns
        optional! :column_ids, type: Array
        column_ids = params[:column_ids]

        return render_json(1, '参数不规范') unless column_ids.is_a?(Array) && column_ids.length < 11
        column_ids = column_ids.map(&:to_i)
        if column_ids != [0]
          Column.find(column_ids)
        else
          column_ids = []
        end
        origin_ids = current_user.columns.pluck(:id)
        common_ids = column_ids & origin_ids
        remove_ids = origin_ids - common_ids
        add_ids = column_ids - common_ids

        if remove_ids.blank? && add_ids.blank?
          return render_json(1, '未更新时请勿提交')
        end

        if (common_ids.length + add_ids.length - remove_ids.length) < 11
          UserColumn.transaction do
            if remove_ids.present?
              current_user.user_columns.where(column_id: remove_ids).destroy_all
            end
            if add_ids.present?
              add_ids.each do |column_id|
                UserColumn.find_or_create_by!(column_id: column_id, user_id: current_user.id)
              end
            end
            unless current_user.edit_nav_columns
              current_user.update(edit_nav_columns: true)
            end
          end
          render_json(0, '提交成功')
        else
          render_json(1, '最多自定义10个栏目')
        end
      end

      # 获取用户视频频道列表
      # get /api/v1/columns/user_source_urls
      def user_source_urls
        source_urls = User.where.not(source_url: nil).select(:source_url, :nickname)
        source_urls_length = source_urls.length
        page_source_urls = source_urls
        render json: {code: 0, message: source_urls_length > 0 ? '获取成功' : '暂无数据', data: {urls_count: source_urls_length, urls: source_urls}}
      end

    end
  end
end
