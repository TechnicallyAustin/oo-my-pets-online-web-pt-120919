require 'pry'
class Owner
  @@all = []
  attr_accessor :dog, :cat
  attr_reader :species, :name
  def initialize(name, species = "human")
    @name = name 
    @species = species 
    @@all << self 
  end

  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count 
    @@all.count
  end
  
  def cats 
    Cat.all.select { |i| i.owner == self}
  end
  
  def dogs
    Dog.all.select { |i| i.owner == self}
  end
  
  def buy_cat(cat)
    cat = Cat.new(cat, self)
    cat.owner = self
  end
  
  def buy_dog(dog)
    dog = Dog.new(dog, self)
    dog.owner = self
  end
  
  def walk_dogs
    dog.mood = "happy"
    binding.pry 
  end
  
  def feed_cats
    self.cats= "happy"
  end
  
  def sell_pets
    Dog.all.each do |dog|
    if dog.owner == self 
      dog.mood == "nervous"
    end
     Cat.all.each do |cat|
      if cat.owner == self 
        cat.mood == "nervous"
      end
   end
  
  def list_pets
    Dog.all.detect { |dog| p dog.name }
    Cat.all.detect { |cat| p cat.name }
  end
    
  
  
  
  
  
  
  def self.reset_all
    @@all =[]
  end
  
  
  # code goes here
end