class Review
  attr_reader :customer, :restaurant, :rating
  @@all = []
    def initialize(customer, restaurant, rating)
        @rating = rating
        @customer = customer
        @restaurant = restaurant
        self.class.all << self
    end

    def self.all
        @@all
    end
    
end