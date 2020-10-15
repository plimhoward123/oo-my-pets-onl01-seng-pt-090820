class Cat
  attr_accessor :owner, :mood
  attr_reader   :name
  @@all = []

  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    self.save
  end

  def save
    self.owner.add_cat(self)
  end
  def clear
    @owner = nil
  end

  def self.all
    @@all
  end
end
