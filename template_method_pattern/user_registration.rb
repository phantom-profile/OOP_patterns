class UserRegistration
  # @param [User] user
  def register(user)
    @user = user
    raise 'invalid user params' unless @user.valid?

    database_insertion
    log_creation
    user_notification
  end

  protected

  def database_insertion
    raise NoMethodError
  end

  def log_creation
    raise NoMethodError
  end

  def user_notification
    raise NoMethodError
  end
end