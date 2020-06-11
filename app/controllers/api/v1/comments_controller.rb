module Api
  module V1
    class CommentsController < Api::V1::ApplicationController
      before_action :authenticate_user!, except: [:index]


      # 某视频评论列表
      # get /api/v1/comments
      def index
        requires! :video_id, type: Integer
        optional! :page, default: 1
        optional! :per, default: 20, values: 1..50
        video_id = params[:video_id]
        video = Video.find(video_id)
        comments = Comment.joins(:user).where(video_id: video_id).order(created_at: :desc).select('comments.*', 'users.nickname', 'users.avatar').page(params[:page]).per(params[:per]).map { |c| {
            avatar: c.avatar,
            nickname: c.nickname,
            created_at: c.created_at.strftime('%Y-%m-%d %H:%M:%S'),
            body: c.body,
        } }
        render json: {code: 0, data: {comments_count: video.comments_count, comments: comments}}
      end

      # 发表评论
      # POST /api/v1/comments

      def create
        requires! :video_id, type: String
        requires! :body, type: String

        video_id = params[:video_id]
        body = params[:body]

        has_some_one = current_user.comments.where(video_id: video_id, body: body).exists?
        if has_some_one
          return render_json(1, '请不要提交相同内容的评论')
        end

        video_comment = current_user.comments.build(video_id: video_id, body: body)
        if video_comment.save
          render_json(0, '评论成功')
        else
          render_json(1, first_error(video_comment))
        end
      end

      # 我的视频评论
      # get /api/v1/comments/my

      def my_comments
        optional! :video_id, type: Integer
        optional! :page, default: 1
        optional! :per, default: 20, values: 1..50
        video_id = params[:video_id]
        comments = current_user.comments.joins(:video).order(created_at: :desc).select('comments.*', 'videos.name as video_name')
        if video_id.present?
          Video.find(video_id)
          comments = comments.where(video_id: video_id)
        end
        page_comments = comments.page(params[:page]).per(params[:per]).map { |c| {
            avatar: current_user.avatar,
            nickname: current_user.nickname,
            created_at: c.created_at.strftime('%Y-%m-%d %H:%M:%S'),
            body: c.body,
            video_name: c.video_name,
            video_id: c.video_id
        } }
        render json: {code: 0, data: {comments_count: comments.length, comments: page_comments}}
      end

    end
  end
end