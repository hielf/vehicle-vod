module Api
  module V1
    class CitiesController < Api::V1::ApplicationController

      # 获取城市列表
      # get /api/v1/cities

      def index
        cities = City.find_by_sql("select a.abbr,(select array_to_json(array_agg(row_to_json(t))) from (select id,name,abbr from cities b where a.abbr=b.abbr) AS t) as abbr_list from cities a group by a.abbr ORDER BY a.abbr asc")
        render json: {code: 0, data: cities}
      end
    end
  end
end
