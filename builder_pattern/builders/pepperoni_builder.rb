# frozen_string_literal: true

require_relative 'pizza_builder'

class PepperoniBuilder < PizzaBuilder
  NAME = 'Pepperoni'

  def set_sauce
    @pizza.sauce = Ingredient.new('ketchup', 200 * @size)
  end

  def add_ingredients
    @pizza.add_ingredient Ingredient.new('tomatoes', 200 * @size)
    @pizza.add_ingredient Ingredient.new('pepperoni', 200 * @size)
  end

  def set_bake_time
    @pizza.bake_time = 5
  end

  def bake
    @pizza.status = 'ready'
  end
end
