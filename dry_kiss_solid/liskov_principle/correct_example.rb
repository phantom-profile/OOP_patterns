# frozen_string_literal: true

require_relative 'pen'
require_relative 'pen_tester'

# correct. New behaviour added
class BothSidesPen < Pen
  def write_reversed(word)
    raise 'out of ink' if out_of_ink_for? word

    self.ink -= word.length
    word.reverse
  end
end

# correct. Behaviour not changed
puts 'success' if PenTester.new(BothSidesPen.new, same_as: Pen.new).behaviour_not_changed?
