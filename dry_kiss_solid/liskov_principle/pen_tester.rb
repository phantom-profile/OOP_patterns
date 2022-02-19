# frozen_string_literal: true

class PenTester
  TEST_FRUIT = 'apple'

  def initialize(pen, same_as:)
    @tested_pen = pen
    @example_pen = same_as
  end

  def behaviour_not_changed?
    tested_pen.write(TEST_FRUIT) == example_pen.write(TEST_FRUIT)
  end

  protected

  attr_accessor :tested_pen, :example_pen
end
