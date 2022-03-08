# frozen_string_literal: true

require_relative 'tech_factory'
require_relative '../app/galaxy'
require_relative '../app/earbuds'

class SamsungFactory < TechFactory
  PHONE_BATTERY_MAH = 5000
  HEADPHONES_BATTERY_MAH = 3000

  def produce_phone
    Galaxy.new(PHONE_BATTERY_MAH, name_for_smartphone)
  end

  def produce_headphones
    Earbuds.new(true, HEADPHONES_BATTERY_MAH, name_for_headphones)
  end

  protected

  def name_for_smartphone
    "#{super}Samsung"
  end

  def name_for_headphones
    "#{super}Samsung"
  end
end
