# frozen_string_literal: true

require_relative 'prototyped'

class HouseInfo
  include Prototyped

  attr_accessor :building, :owner

  # @param [OwnerInfo] owner
  # @param [BuildingInfo] building
  def initialize(owner, building)
    @owner = owner
    @building = building
  end

  def to_s
    "HOUSE INFO:\n" \
      "\t#{building}\n" \
      "OWNER INFO:\n" \
      "\t#{owner}"
  end
end
