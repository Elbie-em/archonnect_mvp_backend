module Api
  module V1
    class PlansController < ApplicationController
      include CurrentUserConcern
      def index
        @plans = Plan.all

        if @plans
          render json: {
            status: 200,
            result: @plans
          }
        else
          render json: {
            status: 404,
            result: []
          }
        end

      end
    end
  end
end
