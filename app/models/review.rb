class Review

attr_accessor :customer, :rating 
attr_reader :restaurant 
  
@@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        Review.all << self 
    end 

    def self.all
        @@all
    end 
end





- `Review#initialize`
  - Reviews should be initialized with a customer, restaurant, and a rating (a number)
- `Review#rating`
  - returns the rating for a restaurant.
- `Review.all`
  - returns all of the reviews