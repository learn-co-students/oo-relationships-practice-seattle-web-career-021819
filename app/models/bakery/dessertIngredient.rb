class DessertIngredient
  attr_reader :name, :dessert, :ingredient
  @@all = []

  def initialize(name, dessert, ingredient)
    @name = name
    @dessert = dessert
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end
end
