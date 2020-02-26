class Review
     @@all = []

     attr_reader :restaurant, :customer
     attr_accessor :rating 

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