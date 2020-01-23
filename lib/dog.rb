class Dog
  @@all = []
  attr_accessor :name, :breed 
  attr_reader:owner
  def initialize(name)
    @name = name 
    @owner = owner
    @@all << self 
  end
  # code goes here
end