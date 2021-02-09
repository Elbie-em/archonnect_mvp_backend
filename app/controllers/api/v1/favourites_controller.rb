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
            result: @favourites
          }
        else
          render json: {
            status: 401,
            result: []
          }
        end
      end

      def create
        user_id = params['data']['user_id']
        plan_id = params['data']['plan_id']

        favourite_exists = Favourite.where(user_id:user_id,plan_id:plan_id).exists?

        if !favourite_exists
          favourite = Favourite.create(
            user_id: params['data']['user_id'],
            plan_id: params['data']['plan_id'],
          )

          render json: {
            status: 202,
            favourite: favourite,
            message: "House plan added to favourites successfully."
          }
        else
          render json: {
            status: 500,
            message: "You already have this entry saved in favourites."
          }
        end
      end
    end
  end
end


