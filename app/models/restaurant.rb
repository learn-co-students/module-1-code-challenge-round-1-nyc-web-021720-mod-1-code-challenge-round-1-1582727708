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

  # - `Restaurant#reviews`
  # - returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self 
    end
  end

  # - `Restaurant#customers`
  # - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers
    reviews.map do |review|
      review.customer
    end.uniq 
  end

  # - `Restaurant#average_star_rating`
  # - returns the average star rating for a restaurant based on its reviews
  # - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings

  # helper method 
  def sum_of_ratings
    reviews.map do |review|
      review.rating
    end.sum 
  end

  def average_star_rating
    sum_of_ratings / reviews.length 
  end

end
