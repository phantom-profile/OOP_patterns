# frozen_string_literal: true

require_relative 'unit'

class Paladin < Unit
  def attack_animation
    "Paladin #{nickname} hits"
  end

  def defence_animation
    "Paladin #{nickname} receive damage"
  end
end
