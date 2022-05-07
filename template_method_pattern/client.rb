require_relative 'sql_own_log_email_registration'
require_relative 'redis_api_log_sms_registration'
require_relative 'user'

class Client
  def initialize(users, registration_service)
    @users = users
    @registration_service = registration_service
  end

  def register_perform
    @users.each { |user| @registration_service.register(user) }
  end
end


users = [
  User.new('joe', '1@gmail.com', '88005553535', 'hard_password_for_real'),
  User.new('chapkin', '3@gmail.com', '88005553537', 'hard_password_for_real'),
]

server_1 = Client.new(users, SqlOwnLogEmailRegistration.new)
server_2 = Client.new(users, RedisApiLogSmsRegistration.new)

puts 'SERVER ONE REGISTER PERFORMING'
server_1.register_perform

puts 'SERVER TWO REGISTER PERFORMING'
server_2.register_perform

# OUTPUT

# SERVER ONE REGISTER PERFORMING
# Connect to sql
# INSERT INTO users (name, email, phone, password) VALUES (joe, 1@gmail.com, 88005553535, hard_password_for_real;
# My log performing system
# created user with attributes: {:name=>"joe", :phone=>"88005553535", :email=>"1@gmail.com", :password=>"********"}
# Sending email
# Sms sent to 1@gmail.com

# Connect to sql
# INSERT INTO users (name, email, phone, password) VALUES (chapkin, 3@gmail.com, 88005553537, hard_password_for_real;
# My log performing system
# created user with attributes: {:name=>"chapkin", :phone=>"88005553537", :email=>"3@gmail.com", :password=>"********"}
# Sending email
# Sms sent to 3@gmail.com

# SERVER TWO REGISTER PERFORMING
# Connect to Redis
# Redis.users.push({:name=>"joe", :phone=>"88005553535", :email=>"1@gmail.com", :password=>"********"});
# Connect to external log service
# Send user attributes: {:user=>{:name=>"joe", :phone=>"88005553535", :email=>"1@gmail.com", :password=>"********"}}
# Sending sms
# Sms sent to 88005553535

# Connect to Redis
# Redis.users.push({:name=>"chapkin", :phone=>"88005553537", :email=>"3@gmail.com", :password=>"********"});
# Connect to external log service
# Send user attributes: {:user=>{:name=>"chapkin", :phone=>"88005553537", :email=>"3@gmail.com", :password=>"********"}}
# Sending sms
# Sms sent to 88005553537