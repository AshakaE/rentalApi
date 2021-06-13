class ApplicationController < ActionController::Base
  include Response
  include ExceptionHandler

  # called before every action on controllers
  before_action :authorize_request
  attr_reader :current_user

  private

  # check for valid request token and return user
  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call[:user])
  end

  def validate_admin!
    @current_user = (AuthorizeApiRequest.new(request.headers).call[:user]) 
    unless @current_user.admin == true
      redirect_to action: "show", id: @current_user.id
    end
  end
end
