# frozen_string_literal: true

require_relative '../factories/apple_factory'
require_relative '../factories/samsung_factory'

class Client
  def initialize(factory)
    @phone = factory.produce_phone
    @headphones = factory.produce_headphones
  end

  def use_phone
    @headphones.connect_to @phone
    @phone.use_for_hour
  end
end

Client.new(SamsungFactory.new).use_phone
Client.new(AppleFactory.new).use_phone
