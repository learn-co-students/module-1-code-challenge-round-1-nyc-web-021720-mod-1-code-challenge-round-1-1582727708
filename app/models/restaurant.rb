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

  # returns an array of all review for that (self) restaurant
  def reviews
    # binding.pry
    Review.all.select do |restaurant_reviews|
      restaurant_reviews.restaurant == self
    end 
  end 

  # returns a unique list of customers who have reviews restaurant (self)
  def customers
    reviews.map do |customers_review|
      customers_review.customer
    end.uniq
  end 



  def average_star_rating
    rating_sum = 0
    rating_index = 1
    reviews.each_with_index do |value, index|
      # binding.pry
      rating_sum += value.rating
      rating_index += 1
    end 
    # binding.pry
    rating_average = rating_sum / rating_index
  end 

end
