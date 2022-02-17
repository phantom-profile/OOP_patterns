# frozen_string_literal: true

require 'benchmark'

require_relative 'factory'
require_relative 'market'
require_relative 'cargo_box'
require_relative 'order'
require_relative 'auto_to_human_adapter'

# main behaviour of system
class Main
  attr_accessor :market, :factory

  def initialize
    @factory = Factory.new
    @market = Market.new 'small market'
  end

  def interact_through_adapter(goods)
    cargo = factory.serve_order!(market.make_order(goods))
    cargo_with_handles = cargo.map { |box| AutoToHumanAdapter.new box }
    market.accept_and_sell! cargo_with_handles
  end

  def interact_without_adapter(goods)
    cargo = factory.serve_order!(market.make_order(goods))
    market.accept_and_sell! cargo
  end
end

puts(Benchmark.measure { Main.new.interact_through_adapter 10 })
puts(Benchmark.measure { Main.new.interact_without_adapter 10 })
