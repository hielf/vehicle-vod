module Api
  module V1
    class VideosController <Api::V1::ApplicationController
      before_action :authenticate_user!, only: [:last_update, :my, :create, :destroy, :update, :delete_file]


      # 获取视频列表
      # get /api/v1/videos
      def index
        optional! :column_id
        optional! :page, default: 1
        optional! :per, default: 10, values: 1..50

        column_id = params[:column_id].to_i

        if column_id > 0
          where_sql = "where c.id = #{column_id} and v.status = 1"
        else
          where_sql = 'where v.status = 1'
        end

        # if params[:page] == 1
        #   cookies[:random_seed] ||= SecureRandom.random_number
        # else
        #   Video.connection.execute "SELECT setseed(0.2)"
        # end
        videos = Video.find_by_sql("select v.*,string_agg(c.name,',') as column_names,u.nickname,u.avatar from videos v left join users u on u.id = v.user_id left join video_column_ships v_c on v_c.video_id = v.id left join columns c on c.id = v_c.column_id #{where_sql} GROUP BY v.id,u.nickname,u.avatar ORDER BY v.created_at desc")
        # videos = Video.find_by_sql("(SELECT v.*,string_agg(c.name,',') AS column_names,u.nickname,u.avatar FROM videos v LEFT JOIN users u ON u.id = v.user_id LEFT JOIN video_column_ships v_c ON v_c.video_id = v.id LEFT JOIN columns c ON c.id = v_c.column_id #{where_sql} AND v.created_at >= '#{48.hours.ago.to_s}' GROUP BY v.id,u.nickname,u.avatar ORDER BY RANDOM()) UNION ALL (SELECT v.*,string_agg(c.name,',') AS column_names,u.nickname,u.avatar FROM videos v LEFT JOIN users u ON u.id = v.user_id LEFT JOIN video_column_ships v_c ON v_c.video_id = v.id LEFT JOIN columns c ON c.id = v_c.column_id #{where_sql} AND v.created_at < '#{48.hours.ago.to_s}' GROUP BY v.id,u.nickname,u.avatar ORDER BY v.created_at desc)")

        page_videos = Kaminari.paginate_array(videos).page(params[:page]).per(params[:per]).map { |v| {
            id: v.id,
            name: v.name.length > 15 ? "#{v.name[0..14]}..." : v.name,
            full_name: v.name,
            column_names: v.column_names,
            column_ids: v.column_ids,
            nickname: v.nickname,
            author_avatar: v.avatar,
            comments_count: v.comments_count,
            favorites_count: v.favorites_count,
            likes_count: v.likes_count,
            video_duration: v.video_duration,
            duration: v.duration,
            pv: pv_trans(v.pv),
            video_src: v.video_src.present? ? v.video_src : v.src_url,
            video_cover: v.video_cover.present? ? v.video_cover : v.cover_url,
        } }
        render json: {code: 0, message: videos.length == 0 ? '暂无视频' : '获取成功', data: {videos_count: videos.length, videos: page_videos}}
      end


      def home_videos
        # 24h内上传视频播放量最多的五个视频
        hot_videos = Video.on_line.left_joins(:user).where("videos.created_at > ?", 24.hours.ago).select(:id, :name, :video_cover, :pv, 'users.nickname', 'users.avatar as author_avatar').order('videos.pv desc').limit(5)

        # 24h内最新上传视频的20条视频
        last_created_videos = Video.find_by_sql("select v.id,v.name,v.video_cover,u.nickname,u.avatar as author_avatar,(SELECT c.name as column_name FROM columns c INNER JOIN video_column_ships v_c ON c.id = v_c.column_id WHERE v_c.video_id = v.id ORDER BY c.sort asc LIMIT 1) from videos v left outer join users u on u.id = v.user_id where v.status=1 and v.created_at > '#{24.hours.ago}' order by v.created_at desc limit 20")

        # 6个固定栏目及各个栏目4个最新视频
        column_videos = []
        column_names = ['评测', '实拍', '说车', '越野', '街头', '事故']
        columns = Column.where(name: column_names).order('sort').pluck(:id, :name)

        columns.each do |column_id, column_name|
          videos = Video.on_line.left_joins(:user).where("videos.column_ids @> ARRAY[#{column_id}]").select("videos.*", "users.avatar", "users.nickname").order("videos.created_at desc").limit(4).map { |v| {
              id: v.id,
              name: v.name.length > 15 ? "#{v.name[0..14]}..." : v.name,
              full_name: v.name,
              column_ids: v.column_ids,
              nickname: v.nickname,
              author_avatar: v.avatar,
              comments_count: v.comments_count,
              favorites_count: v.favorites_count,
              likes_count: v.likes_count,
              video_duration: v.video_duration,
              duration: v.duration,
              pv: pv_trans(v.pv),
              video_src: v.video_src.present? ? v.video_src : v.src_url,
              video_cover: v.video_cover.present? ? v.video_cover : v.cover_url,
          } }
          column_videos << {column_id: column_id, column_name: column_name, videos: videos}
        end
        render json: {code: 0, message: '获取成功', data: {hot_videos: hot_videos, last_created_videos: last_created_videos, column_videos: column_videos}}
      end

      # 视频详情
      # get /api/v1/videos/:id

      def show
        requires! :id
        v = Video.on_line.joins(:user).where(id: params[:id]).select('videos.*', 'users.avatar', 'users.nickname', 'users.avatar', 'users.followers_count').take
        if v.present?
          v.update(pv: v.pv+1)
          video = {
              id: v.id,
              user_id: v.user_id,
              name: v.name.length > 15 ? "#{v.name[0..14]}..." : v.name,
              full_name: v.name,
              pv: pv_trans(v.pv),
              duration: v.duration,
              video_duration: v.video_duration,
              video_cover: v.video_cover,
              video_src: v.video_src,
              favorites_count: v.favorites_count,
              likes_count: v.likes_count,
              nickname: v.nickname,
              author_avatar: v.avatar,
              followers_count: v.followers_count,
              avatar: v.avatar
          }

          if current_user.present?
            video[:has_liked] = current_user.like_video_ids.include? v.id
            video[:has_favorite] = current_user.favorite_video_ids.include? v.id
            video[:has_follow] = current_user.follow_user_ids.include? v.user_id
          end
          recommend_videos = v.related_videos
        else
          video = nil
          recommend_videos = []
        end

        if recommend_videos.blank?
          recommend_videos = Video.joins(:user).where(status: 1).select('videos.*', 'users.nickname', 'users.avatar').order(pv: :desc).limit(5)
          recommend_videos = recommend_videos.map { |rv| {
              id: rv.id,
              user_id: rv.user_id,
              name: rv.name.length > 15 ? "#{rv.name[0..14]}..." : rv.name,
              full_name: rv.name,
              video_duration: rv.video_duration,
              duration: rv.duration,
              video_cover: rv.video_cover,
              favorites_count: rv.favorites_count,
              likes_count: rv.likes_count,
              nickname: rv.nickname,
              author_avatar: v.avatar,
              pv: rv.pv
          } }
        end

        render json: {code: 0, data: {video: video, recommend_videos: recommend_videos}}
      end

      # 创建视频
      # post /api/v1/videos
      def create
        requires! :name, type: String
        requires! :column_ids, type: Array
        requires! :video_src, type: String
        requires! :video_cover, type: String
        requires! :status, type: Integer, values: %w(0 1)
        video = Video.create(user_id: current_user.id,
                             name: params[:name],
                             video_src: params[:video_src],
                             video_cover: params[:video_cover],
                             column_ids: params[:column_ids],
                             status: params[:status])
        if video.save
          render_json(0, '上传成功')
        else
          render_json(1, first_error(video))
        end
      end


      # 更新视频
      # PATCH/PUT /api/v1/videos/:id

      def update
        requires! :id, type: Integer
        requires! :name, type: Integer
        requires! :column_ids, type: Array
        requires! :video_src, type: Integer
        requires! :video_cover, type: Integer

        video = current_user.videos.find(params[:id])
        if video.update(status: 0, name: params[:name], column_ids: params[:column_ids], video_src: params[:video_src], video_cover: params[:video_cover])
          render_json(0, '更新成功')
        else
          render_json(1, first_error(video))
        end
      end

      # 删除视频
      # DELETE /api/v1/videos/:id
      def destroy
        requires! :id, type: Integer
        video = current_user.videos.find(params[:id])

        if video.destroy
          render_json(0, '删除成功')
        else
          render_json(1, '删除失败')
        end
      end

      # 搜索视频
      # get /api/v1/videos/search

      def search
        requires! :keyword, type: String
        optional! :page, default: 1
        optional! :per, default: 20, values: 1..50

        keyword = params[:keyword]
        search_params = {
            query: {
                bool: {
                    must: [
                        {match_phrase: {name: keyword}},
                    ],
                    filter: {
                        term: {status: 1}
                    }
                }
            },
            sort: {
                created_at: {
                    order: :desc,
                }
            }
        }

        origin_videos = Elasticsearch::Model.search(search_params, Video).page(params[:page]).per(params[:per])
        json_videos = JSON.parse(origin_videos.to_json)

        one_page_videos = json_videos.map { |v| {
            id: v["_id"],
            name: v["_source"]["name"].length > 15 ? "#{v["_source"]["name"][0..14]}..." : v["_source"]["name"],
            full_name: v["_source"]["name"],
            column_ids: v["_source"]["column_ids"],
            nickname: v["_source"]["user"]["nickname"],
            author_avatar: v["_source"]["user"]["avatar"],
            comments_count: v["_source"]["comments_count"],
            video_duration: v["_source"]["video_duration"],
            duration: v["_source"]["duration"],
            favorites_count: v["_source"]["favorites_count"],
            likes_count: v["_source"]["likes_count"],
            pv: pv_trans(v["_source"]["pv"]),
            video_src: v["_source"]["video_src"],
            video_cover: v["_source"]["video_cover"],
            created_at: v["_source"]["created_at"],
        } }
        render json: {code: 0, data: {count: origin_videos.records.total, videos: one_page_videos}}
      end

      #  获取关注用户的所有更新视频
      # get /api/v1/videos/last_update

      def last_update
        optional! :page, default: 1
        optional! :per, default: 10, values: 1..50
        last_activity = LastActivity.find_or_create_by!(user_id: current_user.id)

        following_user_ids = current_user.follow_user_ids
        return render_json(1, '请至少关注一个用户') if following_user_ids.blank?
        @update_count = Video.on_line.where(user_id: following_user_ids).where('videos.created_at > ?', last_activity.last_activity_at).count

        @videos = Video.on_line.joins(:user).where(user_id: following_user_ids).order('videos.created_at desc').select('videos.*', 'users.nickname', 'users.avatar')
        @page_videos = @videos.page(params[:page]).per(params[:per])
        last_activity.update(last_activity_at: Time.zone.now, request_times: last_activity.request_times+1)
      end

      # 获取我的视频列表
      # get /api/v1/videos/my

      def my
        optional! :page, default: 1
        optional! :per, default: 10, values: 1..50

        videos = Video.find_by_sql("select v.*,string_agg(c.name,',') as column_names from videos v left join video_column_ships v_c on v_c.video_id = v.id left join columns c on c.id = v_c.column_id where v.user_id = #{@current_user.id} GROUP BY v.id")

        page_videos = Kaminari.paginate_array(videos).page(params[:page]).per(params[:per]).map { |v| {
            id: v.id,
            name: v.name.length > 15 ? "#{v.name[0..14]}..." : v.name,
            full_name: v.name,
            column_names: v.column_names,
            column_ids: v.column_ids,
            nickname: @current_user.nickname,
            comments_count: v.comments_count,
            video_duration: v.video_duration,
            duration: v.duration,
            favorites_count: v.favorites_count,
            likes_count: v.likes_count,
            pv: pv_trans(v.pv),
            status: v.status,
            video_src: v.video_src.present? ? v.video_src : v.src_url,
            video_cover: v.video_cover.present? ? v.video_cover : v.cover_url,
        } }
        render json: {code: 0, message: videos.length == 0 ? '暂无视频' : '获取成功', data: {videos_count: videos.count, videos: page_videos}}
      end

      # 删除文件
      # post /api/v1/videos/delete_file

      def delete_file
        requires! :video_id, type: Integer
        requires! :key, type: String
        current_user.videos.where(id: params[:video_id]).take!

        require 'qiniu'
        Qiniu.establish_connection! access_key: Rails.application.secrets.qiniu_access,
                                    secret_key: Rails.application.secrets.qiniu_secret
        bucket = 'vehicle-vod'
        key = params[:key]
        # 删除资源
        code, result, response_headers = Qiniu::Storage.delete(
            bucket, # 存储空间
            key # 资源名
        )
        render json: {code: code == 200 ? 0 : code, data: {result: result}}
      end

    end
  end
end
