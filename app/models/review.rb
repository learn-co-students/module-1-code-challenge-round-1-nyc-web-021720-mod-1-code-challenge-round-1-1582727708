class Review
  attr_reader :customer, :restaurant
  attr_accessor :rating
  @@all = []
  def initialize(customer, restaurant, rating)
    @rating = rating
    @customer = customer
    @restaurant = restaurant
    @@self.restaurant << all
end

    def self.all
        @@all
    end


end