# frozen_string_literal: true

# factory which provides boxes of goods for request as order
class Factory
  def initialize
    @load_system = 'automatic'
    @storage = []
  end

  def serve_order!(order)
    @order = order
    validate_order!

    produce
    send_away_goods
  end

  protected

  def send_away_goods
    for_sending = []

    order.size.times { for_sending << storage.pop.moved_by(load_system, delivery_label) }

    for_sending
  end

  def produce
    # business logic for producing goods and packaging in boxes
    order.size.times { storage << CargoBox.new }
  end

  def validate_order!
    raise 'Invalid order size, less then zero' unless order.size.positive?
  end

  def delivery_label
    "On deliver to #{order.label}"
  end

  attr_accessor :storage
  attr_reader :order, :load_system
end
