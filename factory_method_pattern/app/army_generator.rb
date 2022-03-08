# frozen_string_literal: true

class ArmyGenerator
  attr_accessor :money, :army

  def initialize(player_money, army)
    @money = player_money
    @army = army
  end

  # here we have producing units of any type.
  # It can be archer, or paladin, because of common factory interface (::COST and #produce)
  # and it is possible to add wizard or any unit which factory has same interface as UnitFactory
  def add_unit_from(unit_factory)
    cost = unit_factory.class::COST

    return if (self.money -= cost).negative?

    self.money -= cost
    army << unit_factory.produce
  end
end
