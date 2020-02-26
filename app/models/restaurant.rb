class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review_obj|
      review_obj.restaurant == self 
    end
  end

  def customers
    self.reviews.select do |review_obj|
      review_obj.customer
    end.uniq
  end


end



## completed 
# `Restaurant#initialize`
#   - Restaurants should be initialized with a name, as a string



# - `Restaurant#name`
#   - returns the restaurant's name
#   - should not be able to change after the restaurant is created = reader