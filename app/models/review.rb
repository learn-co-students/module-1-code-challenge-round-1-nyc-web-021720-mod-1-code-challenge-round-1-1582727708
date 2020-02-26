class Review
  
    def initialize (customer,restaurant,rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
    end

    
end




# `Review#initialize`
#   - Reviews should be initialized with a customer, restaurant, and a rating (a number)
# - `Review#rating`
#   - returns the rating for a restaurant.
# - `Review.all`
#   - returns all of the reviews