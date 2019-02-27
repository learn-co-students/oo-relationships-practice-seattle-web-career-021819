class Bakery
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients
    DessertIngredient.all.map {|di| di.ingredient}
  end

  def desserts
    DessertIngredient.all.map {|di| di.dessert}
  end

  def average_calories
    sum = self.desserts.inject {|sum, dessert| sum+dessert.calories}
    sum/self.desserts.count
  end

  def shopping_list
    list = self.ingredients.inject("") do |str, ingredient|
      str + "#{ingredient.name}, "
    end
    list[0..list.count-3] # Remove ", " at the end
  end

  def self.all
    @@all
  end
end
