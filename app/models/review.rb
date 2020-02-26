class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        Review.all << self
    end

    def self.restaurants
        self.all.map {|review| review.restaurant}
    end

    def self.customers
        self.all.map {|review| review.customer}
    end

    def rating
        self.select {|review| review.rating == self} 
        
    end

    def self.all
        @@all
    end
end