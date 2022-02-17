# frozen_string_literal: true

# place for selling goods factories produced. orders for factories also created here
class Market
  attr_reader :money

  def initialize(label)
    @load_system = 'humans'
    @for_sale = []
    @label = label
    @money = 0
  end

  def accept_and_sell!(cargo)
    accept_goods cargo

    sell_all
  end

  def make_order(goods_count)
    Order.new goods_count, label
  end

  protected

  def accept_goods(boxes)
    boxes.each { |box| for_sale << box.moved_by(load_system, sales_label) }
  end

  def sell_all
    for_sale_count = for_sale.size
    for_sale_count.times { sell_one for_sale.last }
  end

  def sell_one(box)
    for_sale.delete(box)
    self.money += box.cost
  end

  def sales_label
    "Box is ready for sale in #{label} market"
  end

  attr_accessor :label, :for_sale
  attr_writer :money
  attr_reader :load_system
end
