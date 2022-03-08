# frozen_string_literal: true

require_relative 'headphones'

class Airpods < Headphones
  BATTERY_SPENT_EACH_HOUR = 250

  attr_accessor :brand

  def initialize(any_noise_canceling, battery_mah, unique_name)
    super(any_noise_canceling, battery_mah, unique_name)
    @brand = 'Apple'
  end

  protected

  def impossible_to_connect!
    raise "cannot establish connection, phone is not #{brand} brand"
  end

  def connection_possible_to?(phone)
    super && phone.brand == brand
  end
end