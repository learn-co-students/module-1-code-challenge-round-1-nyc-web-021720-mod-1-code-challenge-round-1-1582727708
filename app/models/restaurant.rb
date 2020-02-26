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
    Review.all.select do |restaurant_obj|
      restaurant_obj.restaurant == self 
    end 
  end   
    
  def customers
      reviews.map do | review_obj|
        review_obj.customers.full_name
      end.uniq    
 end 

def average_star_rating

end 

end
