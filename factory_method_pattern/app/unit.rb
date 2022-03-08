# frozen_string_literal: true

class Unit
  attr_accessor :armor, :damage, :hitpoints, :nickname

  def initialize(hitpoints, damage, armor, nickname)
    @hitpoints = hitpoints
    @damage = damage
    @armor = armor
    @nickname = nickname
  end

  def attack(unit)
    clear_damage = damage - unit.armor
    clear_damage = 1 unless clear_damage.positive?
    unit.receive(clear_damage)

    attack_animation
  end

  def receive(damage)
    self.hitpoints -= damage

    defence_animation
  end

  def attack_animation; end

  def defence_animation; end
end
