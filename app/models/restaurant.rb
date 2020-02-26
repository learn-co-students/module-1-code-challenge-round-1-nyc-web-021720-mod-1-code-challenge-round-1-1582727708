require 'pry'
class Restaurant
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@self.restaurant << all
  end

  def self.all
    @@all
  end

  #helper method - returns an array of all reviews for that restaurant 
  def reviews
    Reviews.select do |restaurant|
      reviews.restaurant = self
  end 
  

  # Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers 
    reviews.map do |customers|
      reviews.customers = self
    end.uniq 

  def rating
    reviews.select do |rating|
      reviews.rating = self
    end 

    ## use rating array or ratings  and then iterate through to add total ratings and then divide by total ratings

      



end
