class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, :authorize_request
  def index
    json_response('Welcome to Carenter')
  end
end
