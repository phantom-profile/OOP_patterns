require_relative 'user_registration'

class RedisApiLogSmsRegistration < UserRegistration
  private

  def database_insertion
    puts 'Connect to Redis'
    puts "Redis.users.push(#{@user.as_json});"
  end

  def log_creation
    puts 'Connect to external log service'
    puts "Send user attributes: #{{user: @user.as_json }}"
  end

  def user_notification
    puts 'Sending sms'
    puts "Sms sent to #{@user.phone}"
  end
end