require_relative "cat"
require_relative "dog"
require_relative "fish"
require "pry"


class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []


  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes:[],dogs:[],cats:[]}
    @@all << self
  end

  #class methods
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end


  # instance methods
  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish_name)
    pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    self.pets.each do |pet_key, pet_object|
      pet_object.each do|pet|
        pet.mood = "nervous"
      end
    end
    self.pets = {fishes:[],dogs:[],cats:[]}
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end




joseph = Owner.new("joseph")
