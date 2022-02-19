# frozen_string_literal: true

module Incorrect
  class Square
    attr_reader :side

    def initialize(side)
      @side = side
    end

    def shape
      'Square'
    end
  end
end
