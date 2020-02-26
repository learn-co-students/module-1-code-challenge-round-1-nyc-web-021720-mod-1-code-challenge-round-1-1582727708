class Review
    attr_accessor :customer, :restaurant
    @@all = []    
    def initialize(customer, restaurant)
        @customer = customer 
        @restaurant = restaurant 
        Review.all << self
    end
    
    def self.all
        @@all
    end
end