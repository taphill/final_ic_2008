class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(item)
    stock[item]
  end

  def restock(item, quantity)
    stock[item] += quantity
  end

  def enough_ingredients_for?(recipe)
    enough_ingredients = recipe.ingredients_required.map do |ingredient, amount|
      stock[ingredient] >= amount
    end

    enough_ingredients.all?(true)
  end
end
