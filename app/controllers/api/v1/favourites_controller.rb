module Api
  module V1
    class FavouritesController < ApplicationController
      include CurrentUserConcern
      def index
        if @current_user
          user = @current_user
          @favourites = user.plans.all 
          
          render json: {
            status: 200,
            data: @favourites
          }
        else
          render json: {
            status: 404,
            data: []
          }
        end
      end

      def create
        favourite = Favourite.create(
          user_id: params['data']['user_id'],
          plan_id: params['data']['plan_id'],
        )

        if favourite
          render json: {
            status: :created,
            favourite: favourite
          }
        else
          render json: {status: 500}
        end
      end
    end
  end
end


