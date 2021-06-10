module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        json_response(@users)
      end

      def create
        @user =  User.create!(user_params)
        json_response(response, :created)
      end

      private

      def user_params
        params.permit(
          :name,
          :password,
          :password_confirmation
        )
      end
    end
  end
end
