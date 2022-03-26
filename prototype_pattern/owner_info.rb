# frozen_string_literal: true

class OwnerInfo
  attr_accessor :lastname, :age, :firstname

  # @param [String] firstname
  # @param [String] lastname
  # @param [Integer] age
  def initialize(firstname, lastname, age)
    @firstname = firstname
    @lastname = lastname
    @age = age
  end

  def to_s
    "OWNER: #{firstname} #{lastname}\n" \
      "\tAGE: #{age}"
  end
end
