module Api
  module V1
    class RegistrationsController < ApplicationController
      def create
        user = User.create(
          email: params['user']['email'],
          password: params['user']['password'],
          password_confirmation: params['user']['password_confirmation']
        )

        if user.valid?
          session[:current_user_id] = user.id
          render json: {
            status: :created,
            user: user
          }
        elsif !user.valid?
          render json: {
            status: 500
          }
        end
      end

      def show
        email = params[:email].to_s
        @user = User.find_by(email: "#{email}.com")

        if @user
          render json: {
            status: 202,
            user: @user
          }
        else
          render json: {
            status: 404,
            user: []
          }
        end
      end
    end
  end
end
