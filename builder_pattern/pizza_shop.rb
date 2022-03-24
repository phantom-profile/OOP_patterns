# frozen_string_literal: true

require_relative 'builders/pizza_director'
require_relative 'builders/pepperoni_builder'
require_relative 'builders/ham_mushroom_builder'

class PizzaShop
  def initialize
    @director = PizzaDirector.new
  end

  # @return [Pizza]
  def serve_order(name, size)
    case name
    when 'pepperoni'
      @director.builder = PepperoniBuilder.new
    when 'ham and mushrooms'
      @director.builder = HamMushroomBuilder.new
    end
    @director.bake_pizza size
  end
end

we_are_opened = PizzaShop.new
puts we_are_opened.serve_order('pepperoni', 'medium').ready_to_eat
puts we_are_opened.serve_order('ham and mushrooms', 'monster').ready_to_eat
