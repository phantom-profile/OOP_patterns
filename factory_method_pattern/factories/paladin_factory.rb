# frozen_string_literal: true

require_relative 'unit_factory'
require_relative '../app/paladin'

class PaladinFactory < UnitFactory
  HITPOINTS = 200
  DAMAGE = 15
  ARMOR = 10

  def produce
    Paladin.new(HITPOINTS, DAMAGE, ARMOR, nickname)
  end
end
