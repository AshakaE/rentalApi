class ApplicationController < ActionController::Base
  include Response
  include Params
  include ExceptionHandler

  before_action :authorize_request
  attr_reader :current_user

  private

  def authorize_request
    @current_user = AuthorizeApiRequest.new(request.headers).call[:user]
  end

  def validate_admin!
    @current_user = AuthorizeApiRequest.new(request.headers).call[:user]
    redirect_to action: 'show', id: @current_user.id unless @current_user.admin == true
  end
end
