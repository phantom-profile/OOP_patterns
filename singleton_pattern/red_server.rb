# frozen_string_literal: true

# singleton
class RedServer

  private_class_method :new

  def self.connection
    @connection ||= new
    puts @connection.connection_message
    @connection
  end

  def add_data(user, key, value)
    refuse_access_to_banned! user
    storage[key.downcase.to_sym] = value
    value
  end

  def get_data(user, key)
    refuse_access_to_banned! user
    storage[key.downcase.to_sym]
  end

  def ban(user)
    banned_addresses << user.ip_address
  end

  def connection_message
    "Connection to server #{name} with IP #{ip_address} established"
  end

  private

  attr_reader :name, :ip_address
  attr_accessor :storage, :banned_addresses

  def initialize
    @name = 'Animal data storage'
    @ip_address = '211.134.42.99'
    @banned_addresses = []
    @storage = {}
    sleep 3
  end

  def refuse_access_to_banned!(user)
    raise "#{user.name} is banned on server" if banned_addresses.include? user.ip_address
  end
end
