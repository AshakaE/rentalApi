module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :verify_authenticity_token
      
      def index
        @users = User.all
        json_response(@users)
      end

      def create
        @user =  User.create!(user_params)
        json_response({message: 'Account created successfully'})
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
