class Recipe

  attr_reader :name, :ingredients_required, :ingredients

  def initialize(name)
    @name = name
    @ingredients_required = {}
    @ingredients = []
  end

  def add_ingredient(ingredient, quantity)
    new_hash = Hash.new
    new_hash[ingredient] = quantity
    ingredients_required.merge!(new_hash) {|k, old_v, new_v| old_v + new_v}

    ingredients << ingredient
    @ingredients = ingredients.uniq
  end

  def total_calories
    ingredients_required.reduce(0) do |sum, (k,v)|
      sum + (k.calories * v)
    end
  end


end
