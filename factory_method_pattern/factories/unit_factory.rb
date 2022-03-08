# frozen_string_literal: true

require_relative '../app/unit'

class UnitFactory
  HITPOINTS = 100
  DAMAGE = 10
  ARMOR = 10
  COST = 10
  NAMES = %w[Billy Joe Orthur SuperMegaOverGigachad].freeze
  LASTNAMES = %w[Herrington Green Chapkin Stalin].freeze

  def produce
    Unit.new(HITPOINTS, DAMAGE, ARMOR, nickname)
  end

  protected

  def nickname
    "#{NAMES.sample} #{LASTNAMES.sample}"
  end
end
