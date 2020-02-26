class Review

    attr_reader :customer, :restaurant
    #spec doesn't indicate that this can't be changed
    attr_accessor :rating 

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