# frozen_string_literal: true

# basic pen with ink limit
class Pen
  attr_reader :ink

  def initialize(ink = 100)
    @ink = ink
  end

  def write(word)
    raise 'out of ink' if out_of_ink_for? word

    self.ink -= word.length
    word
  end

  protected

  attr_writer :ink

  def out_of_ink_for?(word)
    (ink - word.size).negative?
  end
end
