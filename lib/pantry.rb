class Pantry

  attr_reader :stock

  def initialize
    @stock= {}
  end

  def restock(ingredient, quantity)
    stock[ingredient] = quantity
  end

end
