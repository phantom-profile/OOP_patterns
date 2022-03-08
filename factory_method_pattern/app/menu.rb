# frozen_string_literal: true

require_relative '../factories/archer_factory'
require_relative '../factories/paladin_factory'
require_relative 'army_generator'
require_relative 'game'

class Menu
  DIFFICULTY = {
    easy: 0.7,
    medium: 1,
    hard: 1.2
  }.freeze

  FACTORIES = [PaladinFactory, ArcherFactory].freeze

  def initialize
    @player_money = start_money
    @enemy_money = @player_money * DIFFICULTY[level]
  end

  def start_game
    prepare_armies
    Game.new(@player_army, @enemy_army).fight
  end

  def start_money
    puts 'enter start money'
    gets.chomp.to_i
  end

  def level
    puts 'enter level: easy, medium, hard'
    gets.chomp.downcase.to_sym
  end

  def prepare_armies
    @player_army = prepare_player_army
    @enemy_army = prepare_enemy_army
  end

  def prepare_player_army
    player_generator = ArmyGenerator.new(@player_money, [])

    while @choice != 'ready'
      puts 'add unit. 1 - paladin, 2 - archer'
      @choice = gets.chomp
      case @choice
      when '1'
        paladin = player_generator.add_unit_from PaladinFactory.new
        puts 'no money' if paladin.nil?
      when '2'
        archer = player_generator.add_unit_from ArcherFactory.new
        puts 'no money' if archer.nil?
      when 'ready'
        puts 'to battle!'
      else
        puts 'incorrect'
      end
    end
    player_generator.army
  end

  def prepare_enemy_army
    enemy_generator = ArmyGenerator.new(@enemy_money, [])

    enemy_generator.add_unit_from FACTORIES.sample.new while enough_money_for?(enemy_generator)
    enemy_generator.army
  end

  def enough_money_for?(generator)
    @minimum ||= FACTORIES.max_by { |element| element::COST }
    generator.money >= @minimum::COST
  end
end

Menu.new.start_game