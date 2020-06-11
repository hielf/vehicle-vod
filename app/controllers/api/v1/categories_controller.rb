module Api
  module V1
    class CategoriesController < Api::V1::ApplicationController

      # 获取分类列表
      # GET /api/v1/categories
      def index
        optional! :page, default: 1
        optional! :per, default: 20, values: 1..100
        categories = Category.all
        page_categories = categories.page(params[:page]).per(params[:per])
        render json: {code: 0, data: {categories_count: categories.length, categories: page_categories}}
      end

      # 获取所有分类的所属栏目
      # get /api/v1/categories/belongs_columns

      def belongs_columns
        category_columns = Category.find_by_sql('select a.id,a.name,(select array_to_json(array_agg(row_to_json(t))) from (select id,name from columns c where c.category_id=a.id and status = 1 ORDER BY sort) AS t) as columns_list from categories a where a.status = 1 ORDER BY a.sort asc')
        render json: {code: 0, data: {category_columns: category_columns}}
      end

    end
  end
end
