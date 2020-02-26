class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers 
  #   #goal: restaurant3.customers == 
  #   # [customer objects who reviewed that 
  #   # restaurant]
    self.reviews.select do |customer_review|
      customer_review.customer
    end.uniq
  end

  def average_star_rating
    self.reviews.select do |restaurant_review|
      restaurant_review.rating
    end.sum / self.reviews.length
  end

end

# Restaurant#customers
# Returns a unique list of all 
# customers who have reviewed a particular 
# restaurant.

# Restaurant#average_star_rating
# returns the average star rating for a restaurant 
# based on its reviews
# Reminder: you can calculate the average by adding
#  up all the ratings and dividing by the number 
#  of ratings