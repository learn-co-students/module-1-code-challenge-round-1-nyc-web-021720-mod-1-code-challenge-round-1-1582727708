class Review
    attr_accessor :customer , :restaurant
    attr_accessor   :rating
    @@all =[]
    def initialize(customer,restaurant,rating)
        @customer = customer
        @restaurant = restaurant 
        @rating = rating 
        Review.all << self 
    end

    def self.all
        @@all
    end 


  
end