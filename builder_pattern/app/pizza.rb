# frozen_string_literal: true

class Pizza
  attr_accessor :platform, :name, :ingredients, :sauce, :bake_time, :status

  # @param [String] name
  def initialize(name)
    @name = name
    @platform = nil
    @sauce = nil
    @ingredients = []
    @bake_time = nil
    @status = 'raw'
  end

  # @return [Array]
  def add_ingredient(ingredient)
    @ingredients << ingredient
  end

  # @return [String]
  def ready_to_eat
    "Pizza #{name}
On platform #{platform}
With sauce #{sauce}
With ingredients:
    #{ingredients.inject('') { |str, ingredient| "#{str}#{ingredient.tastes}\n\t" }}Bake time: #{bake_time}
STATUS: #{status}
----------------------------------"
  end
end
