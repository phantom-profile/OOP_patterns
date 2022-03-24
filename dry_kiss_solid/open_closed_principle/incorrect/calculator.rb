# frozen_string_literal: true

# incorrect. for more figures we must change code of Calculator#sum_squares
module Incorrect
  class Calculator
    def sum_squares(*figures)
      sum = 0
      figures.each do |figure|
        case figure.shape
        when 'Circle'
          sum += Math::PI * (figure.radius**2)
        when 'Square'
          sum += figure.side**2
        else
          raise 'Unknown figure shape'
        end
      end
    end
  end
end
