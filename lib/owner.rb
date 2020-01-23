require 'pry'
class Owner
  @@all = []
  attr_accessor :pets
  attr_reader :species, :name
  def initialize(name)
    @name = name 
    @species = species 
    @@all << self 
  end
  def species=(human)
    @species = "human"
  end
  
  def say_species
    @species
    binding.pry
  end
  
  def self.all
    @@all
  end
  
  def self.count 
    @@all.count
  end
  
  
  def self.reset_all
    @@all =[]
  end
  
  
  # code goes here
end