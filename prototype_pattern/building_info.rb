# frozen_string_literal: true

class BuildingInfo
  attr_accessor :street, :number, :city

  # @param [String] city
  # @param [String] street
  # @param [Integer] number
  def initialize(city, street, number)
    @city = city
    @street = street
    @number = number
  end

  def to_s
    "STREET: #{city} #{street} - #{number}"
  end
end
