class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end



## completed 
# `Restaurant#initialize`
#   - Restaurants should be initialized with a name, as a string



# - `Restaurant#name`
#   - returns the restaurant's name
#   - should not be able to change after the restaurant is created = reader