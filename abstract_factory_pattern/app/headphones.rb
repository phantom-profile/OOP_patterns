# frozen_string_literal: true

class Headphones
  BATTERY_SPENT_EACH_HOUR = 200

  attr_accessor :battery_mah

  def initialize(any_noise_canceling, battery_mah, unique_name)
    @noise_canceling = any_noise_canceling
    @name = unique_name
    @battery_mah = battery_mah
  end

  def play_for_hour
    power_off! if battery_mah < BATTERY_SPENT_EACH_HOUR

    self.battery_mah -= BATTERY_SPENT_EACH_HOUR
  end

  def power_off!
    raise 'no battery, please recharge headset'
  end

  def connect_to(phone)
    impossible_to_connect! unless connection_possible_to? phone
    @connected_to = phone
    phone.connect_to self
  end

  protected

  def connection_possible_to?(phone)
    !phone.nil?
  end

  def impossible_to_connect!
    raise 'cannot establish connection to phone'
  end
end
