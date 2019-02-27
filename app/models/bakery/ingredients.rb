class Ingredients
  attr_reader :name, :dessert
  @@all = []

  def initialize(name, dessert)
    @name = name
    @dessert = dessert
    @@all << self
  end

  def dessert
    DessertIngredient.all.map {|di| di.ingredient == self}
  end

  def bakery
    self.dessert.map {|di| di.bakery}
  end

  def self.find_all_by_name(ingredient)
    DessertIngredient.all.select {|di| di.ingredient.name.include?(ingredient)}
  end

  def self.all
    @@all
  end
end
