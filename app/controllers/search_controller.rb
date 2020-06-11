class SearchController < ApplicationController
  include ApplicationHelper

  def search

    keyword = params[:q] ||= ''
    status = params[:status] ||= 1

    search_modules = [Video]

    search_params = {
        query: {
            bool: {
                must: [
                    {match_phrase: {name: keyword}},
                ],
                # must: {match: {name: {
                #     query: keyword,
                #     type: :phrase
                # }}},
                filter: {
                    term: {status: status}
                }
            }

        },
        highlight: {
            pre_tags: ['<strong class="aaa">'],
            post_tags: ['</strong>'],
            fields: {name: {}}
        },
        sort:
            {created_at: {order: :desc}}

    }
    @result = Elasticsearch::Model.search(search_params, search_modules).page(params[:page]).per(params[:per])
    videos = JSON.parse(@result.to_json)

    one_page_videos = videos.map { |v| {
        time: v["_source"]["created_at"],
        id: v["_id"],
        name: v["_source"]["name"].length > 15 ? "#{v["_source"]["name"][0..14]}..." : v["_source"]["name"],
        full_name: v["_source"]["name"],
        column_ids: v["_source"]["column_ids"],
        nickname: v["_source"]["user"]["nickname"],
        author_avatar: v["_source"]["user"]["avatar"],
        comments_count: v["_source"]["comments_count"],
        video_duration: v["_source"]["video_duration"],
        duration: v["_source"]["duration"],
        pv: pv_trans(v["_source"]["pv"]),
        video_src: v["_source"]["video_src"],
        video_cover: v["_source"]["video_cover"]
    } }

    if params[:postman].present?
      render json: {code: 0, data: {count: @result.records.total, videos: one_page_videos}}
    end

  end


end
