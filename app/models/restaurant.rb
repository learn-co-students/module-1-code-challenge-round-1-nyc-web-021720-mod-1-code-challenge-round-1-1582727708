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

end

# Restaurant#reviews
# returns an array of all reviews for 
# that restaurant

# Restaurant#customers
# Returns a unique list of all 
# customers who have reviewed a particular 
# restaurant.