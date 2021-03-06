require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    name = name
    @@all << self
    @pets = ({:fishes => [], :cats => [], :dogs => []})
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
   return "I am a human."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    pets[:dogs].map {|dog|dog.mood = "happy"}
   end

   def play_with_cats
     pets[:cats].collect {|cat|cat.mood = "happy"}
   end

   def feed_fish
     pets[:fishes].collect {|fish|fish.mood = "happy"}
   end

   def sell_pets
     #binding.pry
     pets.each do |type, pets|
     pets.map {|pet| pet.mood = "nervous"}
   end
   pets.clear
   end

   def list_pets
     "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
   end

 end
