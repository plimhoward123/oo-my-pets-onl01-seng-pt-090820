class Owner
  attr_reader :name, :species
  attr_accessor :dogs, :cats

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @dogs = []
    @cats = []
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(catName)
    newCat = Cat.new(catName,self)
  end
  def buy_dog(dogName)
    newDog = Dog.new(dogName,self)
  end

  def cats
    @cats
  end

  def dogs
    @dogs
  end

  def self.find_owner(owner)
    return self.all.find {|value| value.name == owner}
  end

  def list_pets
     "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end

  def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      self = nil
    end
    @dogs.each do |dog|
      dog.mood = "nervous"
      reset_all
   end
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def add_dog(dog)
    @dogs << dog
  end

  def add_cat(cat)
    @cats << cat
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
end
