module Api
  module V1
    class FollowsController < Api::V1::ApplicationController
      before_action :authenticate_user!

      # 关注用户列表
      # GET /api/v1/follows

      def index
        optional! :page, type: Integer, default: 1
        optional! :per, type: Integer, default: 10, value: 1..20

        following_count = current_user.following_count
        if following_count == 0
          users = []
        else
          user_ids = current_user.follow_user_ids
          users = User.where(id: user_ids).select(:id, :avatar, :nickname, :followers_count, :following_count).page(params[:page]).per(params[:per])
        end
        render json: {code: 0, message: '获取成功', data: {following_count: following_count, users: users}}
      end


      # 关注用户
      # POST /api/v1/follows

      def create
        requires! :user_id, type: Integer
        followed_user = User.find(params[:user_id])
        s, m = current_user.follow(followed_user)
        if s
          render_json(0, '关注成功')
        else
          render_json(1, m.nil? ? '关注失败' : m)
        end
      end

      # 取消关注用户
      # POST /api/v1/follows/cancel

      def destroy
        requires! :user_id, type: Integer
        user = User.find(params[:user_id])
        s, m = current_user.cancel_follow(user)
        if s
          render_json(0, '取消关注成功')
        else
          render_json(1, m.nil? ? '取消关注失败' : m)
        end
      end


    end
  end
end