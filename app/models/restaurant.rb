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
    Reviews.all.select do |review|
      review.restaurant == self
    end 
  end
 
  # Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers 
    Review.all.map do |review|
      review.customer  
    end.uniq
  end 

  # Restaurant#average_star_rating`
  # - returns the average star rating for a 
  # restaurant based on its reviews
  # - Reminder: you can calculate the average by adding up all the ratings and 
  # dividing by the number of ratings

  def avarage_star_rating 
    Reviews.all.map do |revievs|
      revievs.rating
    end
  end 
  def self.calculate 
      sum = 0
      Self.avarage_star_rating.each do |i|
      sum += i
  end 
      i /Self.avarage_star_rating
  end
end
