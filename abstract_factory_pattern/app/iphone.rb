# frozen_string_literal: true

require_relative 'smartphone'

class Iphone < Smartphone
  BATTERY_SPENT_EACH_HOUR = 250

  def initialize(battery_mah, unique_name)
    super(battery_mah, unique_name)
    @brand = 'Apple'
  end

  protected

  def display
    'I do not explode in your hands'
  end

  def connection_possible_to?(headphones)
    super && headphones.brand == brand
  end
end
