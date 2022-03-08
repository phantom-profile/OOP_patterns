# frozen_string_literal: true

require_relative 'smartphone'

class Galaxy < Smartphone
  BATTERY_SPENT_EACH_HOUR = 400

  def initialize(battery_mah, unique_name)
    super(battery_mah, unique_name)
    @brand = 'Samsung'
  end

  protected

  def display
    'There is no need to sell kidney to buy me'
  end

  def connection_possible_to?(headphones)
    super && headphones.brand == brand
  end
end
