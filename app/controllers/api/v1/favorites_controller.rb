module Api
  module V1
    class FavoritesController < Api::V1::ApplicationController
      before_action :authenticate_user!

      # 用户收藏视频列表
      # GET /api/v1/favorites

      def index
        optional! :page, default: 1
        optional! :per, default: 10, values: 1..50

        favorite_videos = current_user.favorite_video_actions.joins('left join videos v on v.id = actions.target_id').joins('left join users u on u.id = v.user_id').select('actions.target_id', 'v.*', 'u.nickname', 'u.avatar').page(params[:page]).per(params[:per]).map { |v| {
            id: v.target_id,
            name: (v.name && v.name.length > 15) ? "#{v.name[0..14]}..." : v.name,
            full_name: v.name,
            nickname: v.nickname,
            author_avatar: v.avatar,
            video_duration: v.video_duration,
            duration: v.duration,
            pv: v.pv,
            comments_count: v.comments_count,
            favorites_count: v.favorites_count,
            likes_count: v.likes_count,
            video_src: v.video_src,
            video_cover: v.video_cover,
        } }
        render json: {code: 0, data: {favorite_count: current_user.favorites_count, favorite_videos: favorite_videos}}
      end

      # 收藏视频
      # POST /api/v1/favorites

      def create
        requires! :video_id, type: String
        video = Video.find(params[:video_id])
        if current_user.create_action(:favorite, target: video)
          video.reload
          render json: {code: 0, message: '收藏成功', data: {favorites_count: video.favorites_count}}
        else
          render json: {code: 1, message: '收藏失败', data: {favorites_count: video.favorites_count}}
        end
      end


      # 取消收藏
      # POST /api/v1/favorites/cancel

      def destroy
        requires! :video_id, type: Integer
        video_id = params[:video_id]
        video = Video.find(video_id)
        favorite_obj = current_user.favorite_video_actions.where(target_id: video_id).take
        if favorite_obj.present?
          if current_user.destroy_action(:favorite, target: video)
            video.reload
            render json: {code: 0, message: '取消收藏成功', data: {favorites_count: video.favorites_count}}
          else
            render json: {code: 1, message: '取消收藏失败', data: {favorites_count: video.favorites_count}}
          end
        else
          render json: {code: 1, message: '没有收藏该视频', data: {favorites_count: video.favorites_count}}
        end
      end

    end
  end
end