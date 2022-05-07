require_relative 'user_registration'

class SqlOwnLogEmailRegistration < UserRegistration
  private

  def database_insertion
    puts 'Connect to sql'
    puts "INSERT INTO users (name, email, phone, password) VALUES (#{@user.name}, #{@user.email}, #{@user.phone}, #{@user.password};"
  end

  def log_creation
    puts 'My log performing system'
    puts "created user with attributes: #{@user.as_json}"
  end

  def user_notification
    puts 'Sending email'
    puts "Sms sent to #{@user.email}"
  end
end