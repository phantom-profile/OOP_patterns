# frozen_string_literal: true

require_relative 'unit_factory'
require_relative '../app/archer'

class ArcherFactory < UnitFactory
  HITPOINTS = 70
  DAMAGE = 30
  ARMOR = 5

  def produce
    Archer.new(HITPOINTS, DAMAGE, ARMOR, nickname)
  end
end
