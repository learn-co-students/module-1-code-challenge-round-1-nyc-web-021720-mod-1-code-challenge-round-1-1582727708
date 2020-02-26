class Review

attr_accessor :given_name, :family_name, :rating 
attr_reader :restaurant 
  
@@all = []

    def initialize(given_name, family_name, restaurant, rating)
        @given_name = given_name
        @family_name = family_name
        # @customer = customer
        @restaurant = restaurant
        @rating = rating
        Review.all << self 
    end 

    def self.all
        @@all
    end 
end
