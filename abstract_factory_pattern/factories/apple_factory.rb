# frozen_string_literal: true

require_relative 'tech_factory'
require_relative '../app/iphone'
require_relative '../app/airpods'

class AppleFactory < TechFactory
  PHONE_BATTERY_MAH = 4500
  HEADPHONES_BATTERY_MAH = 2500

  def produce_phone
    Iphone.new(PHONE_BATTERY_MAH, name_for_smartphone)
  end

  def produce_headphones
    Airpods.new(true, HEADPHONES_BATTERY_MAH, name_for_headphones)
  end

  protected

  def name_for_smartphone
    "#{super}Samsung"
  end

  def name_for_headphones
    "#{super}Samsung"
  end
end
