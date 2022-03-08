# frozen_string_literal: true

require_relative 'headphones'

class Earbuds < Headphones
  BATTERY_SPENT_EACH_HOUR = 180

  attr_accessor :brand

  def initialize(any_noise_canceling, battery_mah, unique_name)
    super(any_noise_canceling, battery_mah, unique_name)
    @brand = 'Samsung'
  end

  def play_for_hour
    super
    puts 'there is no need to sell kidney to buy me'
  end

  protected

  def impossible_to_connect!
    raise "cannot establish connection, phone is not #{brand} brand"
  end

  def connection_possible_to?(phone)
    super && phone.brand == brand
  end
end
