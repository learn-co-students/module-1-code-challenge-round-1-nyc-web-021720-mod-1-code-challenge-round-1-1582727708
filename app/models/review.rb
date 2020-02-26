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

    def self.all
        @@all
    end
    def review
        Review.all.select {|review_object| review_object == self}
    end
    def customer
        review.map do |review_object| 
            review_object.customer
        end
    end

    def restaurant
        review.map do |review_object| 
            review_object.restaurant
        end
    end
end