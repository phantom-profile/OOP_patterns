# frozen_string_literal: true

# correct. for more figures we do not need to change code of Calculator#sum_squares
module Correct
  class Calculator
    def sum_squares(*figures)
      sum = 0
      figures.each do |figure|
        sum += figure.square
      end
    end
  end
end
