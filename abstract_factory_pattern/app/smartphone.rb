# frozen_string_literal: true

class Smartphone
  BATTERY_SPENT_EACH_HOUR = 500

  attr_reader :brand

  def initialize(battery_mah, unique_name)
    @name = unique_name
    @battery_mah = battery_mah
  end

  def use_for_hour
    power_off! if battery_mah < BATTERY_SPENT_EACH_HOUR

    self.battery_mah -= BATTERY_SPENT_EACH_HOUR
    puts name_yourself
    puts display
    @connected_to&.play_for_hour
  end

  def connect_to(headphones)
    impossible_to_connect! unless connection_possible_to? headphones
    @connected_to = headphones
  end

  protected

  attr_accessor :battery_mah

  def power_off!
    raise 'no battery, please recharge phone'
  end

  def display
    'bum-bum-bum'
  end

  def connection_possible_to?(headphones)
    !headphones.nil?
  end

  def impossible_to_connect!
    raise 'cannot establish connection to headphones'
  end

  def name_yourself
    "#{self.class}: #{@name}"
  end
end
