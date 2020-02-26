class Review
    attr_accessor :restaurant
    attr_reader :rating, :customer
    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end
end