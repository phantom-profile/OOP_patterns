# frozen_string_literal: true

require_relative 'pen'
require_relative 'pen_tester'

# incorrect. Different way of acting
class ReversedPen < Pen
  def write(word)
    word = word.reverse
    super
  end
end

# incorrect. Behaviour changed
puts 'success' if PenTester.new(BothSidesPen.new, same_as: Pen.new).behaviour_not_changed?
