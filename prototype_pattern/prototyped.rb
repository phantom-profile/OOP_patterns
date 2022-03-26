# frozen_string_literal: true

require 'duplicate'

module Prototyped
  def clone
    Duplicate.duplicate(self)
  end
end
