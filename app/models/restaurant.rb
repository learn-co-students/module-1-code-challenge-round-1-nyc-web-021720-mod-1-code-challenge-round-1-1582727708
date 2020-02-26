class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews 
    Review.all.select{|review|review.restaurant.name == self.name} # iterate through reviews and select reviews with restaurant name.why is this []
  end 

  def 
  
  def customers
    self.reviews.map{|review|review}
    # iterate through list of restaurants with chipolte name and use map to make new array of uniq names
    #undefined method customers 
  end 

end
