# frozen_string_literal: true

class Game
  attr_accessor :enemy_army, :player_army

  def initialize(player_army, enemy_army)
    # army - array of units
    @player_army = player_army
    @enemy_army = enemy_army
  end

  def fight
    until army_terminated?
      puts 'here goes fighting bum bum bum'
      self.player_army = []
      self.enemy_army = []
    end

    congratulate_winner!
  end

  def army_terminated?
    enemy_army.empty? || player_army.empty?
  end

  def congratulate_winner!
    winner = player_army.empty? ? 'Dark Lord' : 'Player'
    puts "#{winner} has won, great game, bruh"
  end
end
