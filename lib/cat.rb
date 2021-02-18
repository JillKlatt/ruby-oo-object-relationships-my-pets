require 'owner'

class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  
end

  
# class Cat
#   attr_accessor :mood
#   attr_reader :name

#   def initialize(name)
#     @name = name
#     @mood = "nervous"
#   end
# end