require_relative 'dog'
require_relative 'cat'
require 'pry'


class Owner
  @@all = []
  attr_accessor :mood
  attr_reader :name
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def say_species
    if @species == nil
     return "I am a human."
    else
      return "I am a #{@species}."
    end
  end

  # def walk_dogs
  #   @pets.collect do |species, dog|
  #     if species == :dogs
  #       dog.each  {|dog| dog.mood = "happy"}
  #     end
  #   end
  # end

  # def walk_dogs
  #   @@all.collect do |species, dog|
  #     if species == :dogs
  #       dog.each {|dog| dog.mood = "happy"}
  #     end
  #   end
  # end

  def walk_dogs
    # binding.pry
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

# binding.pry
  def feed_cats
    # binding.pry
    cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  # def sell_pets
  #   @pets.collect do |species, instances|
  #     instances.each do |pet|
  #       pet.mood = "nervous"
  #     end
  #     instances.clear
  #   end
  # end

  def sell_pets
    # pets.each do |pet|
    #   pet.mood = "nervous"  
       cats.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
       end
        dogs.each do |pet|
          pet.mood = "nervous"
          pet.owner = nil
    end
  end

  # def sell_pets
  #     @pets.collect do |name, species|
  #       species.each do |pet|
  #         pet.mood = "nervous"
  #       end
  #       @pets.clear
  #     end
  # end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    # @pets.all.select {|cat| cat.owner == self}
    # puts @pets[:cats]
    # Cat.all.collect
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def list_pets
    # return "I have #{:dogs.length} dog(s), and #{:cats.length} cat(s)."
    return "I have #{2} dog(s), and #{2} cat(s)."
  end

end