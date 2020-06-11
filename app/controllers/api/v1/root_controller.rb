module Api
  module V1
    class RootController < Api::V1::ApplicationController
      def route_not_found
        # raise ActiveRecord::RecordNotFound
        render json: {code: 404, message: 'Request page not found'}
      end
    end
  end
end
