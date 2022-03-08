# frozen_string_literal: true

require_relative 'unit'

class Archer < Unit
  def attack_animation
    "Archer #{nickname} shoots"
  end

  def defence_animation
    "Archer #{nickname} receive damage"
  end
end
