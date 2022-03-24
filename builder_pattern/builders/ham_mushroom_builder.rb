# frozen_string_literal: true

require_relative 'pizza_builder'

class HamMushroomBuilder < PizzaBuilder
  def initialize
    super
    @pizza = Pizza.new('Ham and Mushrooms')
  end

  def reset_product
    product = @pizza
    @pizza = Pizza.new('Ham and Mushrooms')
    product
  end

  def set_sauce
    @pizza.sauce = Ingredient.new('special', 200 * @size)
  end

  def add_ingredients
    @pizza.add_ingredient Ingredient.new('ham', 300 * @size)
    @pizza.add_ingredient Ingredient.new('mushroom', 200 * @size)
  end

  def set_bake_time
    @pizza.bake_time = 8
  end
end
