class Review
  @@review = []
    attr_accessor :name, :restaurant, :customer
  def initialize(customer,restaurant,rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating 
    Review.all << self 
  end 

  def rating
    rating
  end 

  def self.all
    @@review  
  end 

  
end