# frozen_string_literal: true

module Correct
  class Circle
    attr_reader :radius

    def initialize(radius)
      @radius = radius
    end

    def square
      side**2
    end

    def shape
      'Circle'
    end
  end
end
