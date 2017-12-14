require_relative "cat"
require_relative "fish"
require_relative "owner"
require "pry"

class Dog
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
