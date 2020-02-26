class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant

    @@all = []
    # possibly add logic to check if rating=float, currently set to 0 as default
    def initialize(customer, restaurant, rating=0)
        @customer = customer
        @restaurant = restaurant
        @rating = rating

        Review.all << self
    end

    def self.all
        @@all
    end 

    
  
end