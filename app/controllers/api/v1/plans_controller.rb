module Api
  module V1
    class PlansController < ApplicationController
      include CurrentUserConcern
      def index
        @plans = Plan.all

        if @plans && @current_user
          render json: {
            status: 200,
            result: @plans
          }
        else
          render json: {
            status: 401,
            result: []
          }
        end
      end

      def show
        plan = Plan.find(params[:id])

        if plan && @current_user
          render json: {
            status: 202,
            result: plan
          }
        else
          render json: {
            status: 401,
            result: []
          }
        end
      end
    end
  end
end
