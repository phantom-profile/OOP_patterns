# frozen_string_literal: true

# object for main information for factory creating goods
class Order
  attr_reader :size, :label

  def initialize(order_size, orderer_label)
    @size = order_size
    @label = orderer_label
  end
end
