# frozen_string_literal: true

require_relative '../app/smartphone'
require_relative '../app/headphones'
require 'date'

class TechFactory
  PHONE_BATTERY_MAH = 4000
  HEADPHONES_BATTERY_MAH = 2000

  def produce_phone
    Smartphone.new(PHONE_BATTERY_MAH, name_for_smartphone)
  end

  def produce_headphones
    Headphones.new(false, HEADPHONES_BATTERY_MAH, name_for_headphones)
  end

  protected

  def name_for_smartphone
    "PHN#{DateTime.now}#{Random.rand(100..999)}"
  end

  def name_for_headphones
    "HDPHN#{DateTime.now}#{Random.rand(100..999)}"
  end
end
