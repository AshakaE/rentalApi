class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, :authorize_request, only: %i[create update destroy]
  before_action :validate_admin!, only: :index

  def index
    @users = User.all
    json_response(@users)
  end

  def create
    user =  User.create!(user_params)
    auth_token = AuthenticateUser.new(user.name, user.password).call
    @uid =  user.id
    response = {uid: @uid, auth_token: auth_token, message: Message.account_created}
    json_response(response, :created)
  end

  def show
    @user = User.find(current_user.id)
    user = @user.name
    json_response(user)
  end

  def update
    @user.update(user_params)
  end

  def destroy
    @user.destroy
    head :no_content
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
