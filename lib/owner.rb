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
    Dog.all.each do |dog|
      if dog.owner == self
        dog.mood = "happy"
      end
    end
  end
  
  def feed_cats
    Cat.all.each do |cat| 
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end
  
  def sell_pets
    Dog.all.each do |dog|
    if dog.owner == self 
      dog.mood = "nervous"
    end
    end
  Dog.all.delete_if { |dog| dog.owner == self }
  
  
     Cat.all.each do |cat|
      if cat.owner == self 
        cat.mood = "nervous"
        #binding.pry 
      end
    end
  Cat.all.delete_if { |cat| cat.owner == self }
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