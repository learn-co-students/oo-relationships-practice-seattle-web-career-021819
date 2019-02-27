class Desserts
  attr_reader :name, :bakery
  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def ingredients
  end

  def bakery
  end

  def calories
  end
  
  def self.all
    @@all
  end
end
