class Ingredients
  attr_reader :name, :dessert
  @@all = []

  def initialize(name, dessert)
    @name = name
    @dessert = dessert
    @@all << self
  end

  def dessert
  end

  def bakery
  end

  def self.find_all_by_name(ingredient)
  end

  def self.all
    @@all
  end
end
