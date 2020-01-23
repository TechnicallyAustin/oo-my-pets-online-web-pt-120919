class Dog
  @@all = []
  attr_accessor :bree, :owner, :mood 
  attr_reader:name
  def initialize(name)
    @name = name 
    @owner = owner
    @mood = mood 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  # code goes here
end