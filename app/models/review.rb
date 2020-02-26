class Review
    attr_accessor :rating
    @@all = []
    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end
    def rating
        @rating
    end
    def self.all
        @@all
    end
    def order
        Review.map do |rav_rev|
            rav_rev.sort
        end
    end    
end
# - `Review#initialize`
#   - Reviews should be initialized with a customer, restaurant, and a rating (a number)
# - `Review#rating`
#   - returns the rating for a restaurant.
# - `Review.all`
#   - returns all of the reviews