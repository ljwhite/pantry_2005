class Pantry

  attr_reader :stock

  def initialize
    @stock= {}
  end

  def restock(ingredient, quantity)
    new_hash = Hash.new
    new_hash[ingredient] = quantity
    stock.merge!(new_hash) {|k, old_v, new_v| old_v + new_v}
  end

  def stock_check(ingredient)
    stock[ingredient]
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.each do |ingredient|
      if ingredient.stock.has_key?(ingredient) == true
        true
      else
        false
      end
    end
  end

end
