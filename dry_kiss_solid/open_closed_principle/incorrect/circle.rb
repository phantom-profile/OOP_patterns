# frozen_string_literal: true

module Incorrect
  class Circle
    attr_reader :radius

    def initialize(radius)
      @radius = radius
    end

    def shape
      'Circle'
    end
  end
end
