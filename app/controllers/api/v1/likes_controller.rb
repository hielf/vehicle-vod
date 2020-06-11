module Api
  module V1
    class LikesController < Api::V1::ApplicationController
      before_action :authenticate_user!

      before_action do
        requires! :obj_type, values: %w(video)
        requires! :obj_id
      end

      # 赞一个视频
      # POST /api/v1/likes
      # - count [Integer] 已赞的数量
      def create
        if current_user.liked?(likeable)
          message = '您已赞过'
        else
          current_user.like(likeable)
          likeable.reload
          message = '点赞成功'
        end
        render json: {code: 0, message: message, data: {likes_count: likeable.likes_count}}
      end

      # 取消之前的赞
      # DELETE /api/v1/likes

      def destroy
        if current_user.liked?(likeable)
          current_user.unlike(likeable)
          likeable.reload
          message = '取消赞成功'
        else
          message = '您还没有赞过该对象'
        end
        render json: {code: 0, message: message, data: {likes_count: likeable.likes_count}}
      end

      private

      def likeable
        return @likeable if defined? @likeable
        @likeable = Video.find(params[:obj_id])
      end

      def has_like?

      end
    end
  end
end
