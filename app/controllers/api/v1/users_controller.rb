module Api
  module V1
    class UsersController < Api::V1::ApplicationController
      before_action :authenticate_user!, except: [:get_user_videos, :unblock_users]
      before_action :set_user, only: [:block, :unblock]


      # get /api/v1/users/me

      def me
        user = current_user
        current_user_info = {avatar: user.avatar,
                             nickname: user.nickname,
                             mobile: user.mobile,
                             city: user.city.try(:name)}
        render json: {code: 0, data: current_user_info}
      end

      # post /api/v1/users/update_nickname

      def update_nickname
        requires! :nickname
        nickname = params[:nickname]
        return render_json(1, '不能与之前值相同') if current_user.nickname == nickname
        if current_user.update(nickname: nickname)
          render_json(0, '更新成功')
        else
          render_json(1, first_error(current_user))
        end
      end

      # post /api/v1/users/update_avatar

      def update_avatar
        requires! :avatar, type: String
        if current_user.update(avatar: params[:avatar])
          render_json(0, '更新成功')
        else
          render_json(1, first_error(current_user))
        end
      end

      # post /api/v1/users/update_city

      def update_city
        requires! :city_id
        city_id = params[:city_id].to_i
        return render_json(1, '参数不规范') if city_id == 0
        return render_json(1, '不能与之前值相同') if current_user.city_id == city_id
        if current_user.update(city_id: city_id)
          render_json(0, '更新成功')
        else
          render_json(1, first_error(current_user))
        end
      end


      # get /api/v1/users/get_videos

      def get_user_videos
        requires! :user_id
        optional! :page, default: 1
        optional! :per, default: 10, values: 1..20

        user_id = params[:user_id]
        user = User.find(user_id)
        has_follow = false

        if current_user
          has_follow = current_user.follow_user?(user)
        end
        videos = Video.on_line.where(user_id: user_id).order('created_at desc').page(params[:page]).per(params[:per]).map { |v| {
            id: v.id,
            name: v.name,
            video_cover: v.video_cover,
            duration: v.duration,
            pv: pv_trans(v.pv),
            likes_count: v.likes_count,
            created_at: v.created_at.strftime("%Y-%m-%d")
        } }

        render json: {code: 0, message: '获取成功', data: {user:
                                                           {nickanme: user.nickname,
                                                            avatar: user.avatar,
                                                            followers_count: user.followers_count,
                                                            following_count: user.following_count,
                                                            has_follow: has_follow
                                                           },
                                                       videos_count: user.videos_count,
                                                       videos: videos}}
      end

      # 屏蔽某用户
      # POST /api/v1/users/:id/block

      def block
        requires! :id
        current_user.block_user(@user.id)
        render json: {code: 0, message: '屏蔽成功'}
      end

      # 取消屏蔽用户
      # POST /api/v1/users/:id/unblock
      def unblock
        requires! :id
        current_user.unblock_user(@user.id)
        render json: {code: 0, message: '取消屏蔽成功'}
      end

      # 屏蔽用户列表
      # get /api/v1/users/block_users

      def block_users
        optional! :page, type: Integer, default: 1
        optional! :per, type: Integer, default: 10, value: 1..20

        block_user_ids = current_user.block_user_ids
        block_count = block_user_ids.length
        if block_count == 0
          users = []
        else
          users = User.where(id: block_user_ids).select(:id, :avatar, :nickname, :followers_count, :following_count).page(params[:page]).per(params[:per])
        end
        render json: {code: 0, message: '获取成功', data: {block_count: block_count, users: users}}
      end

      # 未被用户关注且上传过视频的用户列表(按上传视频的时间倒序排序)
      # GET /api/v1/users/unblock_users

      def unblock_users
        optional! :page, type: Integer, default: 1
        optional! :per, type: Integer, default: 10, value: 1..20

        if current_user
          user_ids = current_user.follow_user_ids + current_user.block_user_ids + [current_user.id]
        else
          user_ids = []
        end
        upload_video_users = Video.on_line.left_joins(:user).where.not(user_id: user_ids).select('users.nickname,users.id,users.avatar,max(videos.created_at) as videos_created_at').group('users.id,users.nickname,users.avatar').order('videos_created_at desc').page(params[:page]).per(params[:per])
        render json: {code: 0, message: '获取成功', data: {unblock_users: upload_video_users}}
      end

      private

      def set_user
        @user = User.find(params[:id])
      end

    end
  end
end
