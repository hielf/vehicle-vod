module Api
  module V1
    class StartPagesController < Api::V1::ApplicationController

      # 获取当前有效启动页
      # get /api/v1/start_pages

      def index
        time_now = Time.zone.now
        start_page = StartPage.where('start_time <= ?', time_now).where('end_time >= ?', time_now).first
        if start_page.present?
          render json: {code: 0, message: '获取成功', data: {name: start_page.name, url: start_page.url, cover: start_page.cover_url, obj_id: start_page.obj_id, obj_type: start_page.obj_type}}
        else
          render_json(1, '当前没有有效的启动页')
        end
      end

    end
  end
end