class AuthenticationController < ApplicationController
  skip_before_action :verify_authenticity_token, :authorize_request, only: :create

  def create
    @auth_token = AuthenticateUser.new(auth_params[:name], auth_params[:password]).call
    @uid = User.find_by(name: auth_params[:name]).id
    json_response(uid: @uid, auth_token: @auth_token)
  end

  private

  def auth_params
    params.permit(:name, :password)
  end
end
