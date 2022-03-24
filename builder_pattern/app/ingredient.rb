# frozen_string_literal: true

class Ingredient
  # @param [String] name
  # @param [Integer] quantity
  def initialize(name, quantity)
    @name = name
    @quantity = quantity
  end

  def to_s
    "Ingredient #{@name} in quantity #{@quantity}g"
  end

  alias tastes to_s
end
