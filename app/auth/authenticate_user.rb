class AuthenticateUser
  def initialize(name, password)
    @name = name
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_reader :name, :password

  def user
    user = User.find_by(name: name)
    return user if user&.authenticate(password)

    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end
