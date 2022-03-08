# frozen_string_literal: true

require_relative 'smartphone'

class Galaxy < Smartphone
  BATTERY_SPENT_EACH_HOUR = 400

  attr_accessor :battery_mah, :brand

  def initialize(battery_mah, unique_name)
    super(battery_mah, unique_name)
    @brand = 'Samsung'
  end

  def use_for_hour
    super
    puts 'there is no need to sell another kidney to buy me'
  end

  protected

  def connection_possible_to?(headphones)
    super && headphones.brand == brand
  end
end
