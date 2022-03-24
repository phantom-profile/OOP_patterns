# frozen_string_literal: true

class PizzaDirector
  def initialize
    @builder = nil
  end

  # @param [PizzaBuilder] builder
  attr_writer :builder

  # @return [Pizza]
  def bake_pizza(size)
    raise 'No builder set' if @builder.nil?

    @builder.set_platform(size)
    @builder.set_bake_time
    @builder.set_sauce
    @builder.add_ingredients
    @builder.bake
    @builder.reset_product
  end
end
