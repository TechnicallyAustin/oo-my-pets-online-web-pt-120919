require 'pry'
class Owner
  @@all = []
  attr_accessor :pets
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
    Cats.all.selec { |i|
  
  
  
  
  
  
  def self.reset_all
    @@all =[]
  end
  
  
  # code goes here
end