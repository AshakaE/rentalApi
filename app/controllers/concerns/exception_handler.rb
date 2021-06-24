module ExceptionHandler
  extend ActiveSupport::Concern

  class AuthenticationError < StandardError; end
  class MissingToken < StandardError; end
  class InvalidToken < StandardError; end

  included do
    rescue_from ActiveRecord::RecordInvalid, with: :four_twenty_two
    rescue_from ExceptionHandler::AuthenticationError, with: :unauthorized_request
    rescue_from ExceptionHandler::MissingToken, with: :four_twenty_two
    rescue_from ExceptionHandler::InvalidToken, with: :four_twenty_two

    rescue_from ActiveRecord::RecordNotFound do |msg|
      json_response({ message: msg.message }, :not_found)
    end
  end

  private

  def four_twenty_two(msg)
    json_response({ message: msg.message }, :unprocessable_entity)
  end

  def unauthorized_request(msg)
    json_response({ message: msg.message }, :account_created)
  end
end
