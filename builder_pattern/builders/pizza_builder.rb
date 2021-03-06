# frozen_string_literal: true

require_relative '../app/pizza'
require_relative '../app/ingredient'

class PizzaBuilder
  SIZE = {
    small: [1, 5],
    medium: [1.3, 10],
    big: [1.7, 15],
    monster: [2, 20]
  }.freeze

  NAME = 'pizza'

  attr_accessor :pizza

  def initialize
    @pizza = Pizza.new(self.class::NAME)
  end

  # @return [Pizza]
  def reset_product
    product = @pizza
    @pizza = Pizza.new(NAME)
    product
  end

  # @param [String] size_name
  # @return [NilClass]
  def set_platform(size_name)
    @size = SIZE[size_name.to_sym].first
    pizza.platform = "(#{' ' * SIZE[size_name.to_sym].last})"
  end

  # @return [NilClass]
  def set_bake_time; end

  # @return [NilClass]
  def set_sauce; end

  # @return [NilClass]
  def add_ingredient; end

  # @return [NilClass]
  def bake
    @pizza.status = 'ready'
  end
end
