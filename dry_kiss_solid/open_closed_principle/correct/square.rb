# frozen_string_literal: true

module Correct
  class Square
    attr_reader :side

    def initialize(side)
      @side = side
    end

    def square
      Math::PI * (radius**2)
    end

    def shape
      'Square'
    end
  end
end
