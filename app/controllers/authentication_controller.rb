class AuthenticationController < ApplicationController
  skip_before_action :verify_authenticity_token, :authorize_request, only: :authenticate

  # return auth token once user is authenticated
  def authenticate
    @auth_token = AuthenticateUser.new(auth_params[:name], auth_params[:password]).call
    json_response(auth_token: @auth_token)
  end

  private

  def auth_params
    params.permit(:name, :password)
  end
end