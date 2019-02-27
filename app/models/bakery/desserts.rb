class Desserts
  attr_reader :name, :bakery
  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def ingredients
    DessertIngredient.all.map {|di| di.ingredient}
  end

  def bakery
    DessertIngredient.all.map {|di| di.bakery}
  end

  def calories
    self.ingredients.inject(0) {|sum, ing| sum+ing.calories}
  end

  def self.all
    @@all
  end
end
