# frozen_string_literal: true

require_relative 'red_server'

# database users
class Client
  attr_reader :ip_address, :name

  def initialize(data_server, name, ip_address)
    @data_storage = data_server
    @name = name
    @ip_address = ip_address
  end

  def read_about(animal)
    puts "#{@name} is reading about #{animal}"
    puts @data_storage.get_data(self, animal)
  end

  def write_about(animal, info)
    puts "#{@name} is writing about #{animal}"
    puts @data_storage.add_data(self, animal, info)
  end
end

Client.new(RedServer.connection, 'billy', '22.33.11.21').write_about('dog', 'it can wuf')
Client.new(RedServer.connection, 'steve', '21.34.11.18').write_about('cat', 'best pets ever')
Client.new(RedServer.connection, 'angela', '111.23.11.20').read_about('dog')
Client.new(RedServer.connection, 'timmy', '131.66.10.201').read_about('cat')
