# frozen_string_literal: true

# box where goods are transported
class CargoBox
  attr_reader :cost

  def initialize
    @label = ''
    @cost = 5
  end

  def moved_by(system = '', label = '')
    if system == 'automatic'
      sleep 0.1
    else
      sleep 1
    end

    @label = label
    self
  end
end
