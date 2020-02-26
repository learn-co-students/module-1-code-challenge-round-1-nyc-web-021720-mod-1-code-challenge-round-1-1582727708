class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    Customer.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end
end

# Customer#restaurants
# Returns a unique array of all restaurants a 
# customer has reviewed

# Customer#add_review(restaurant, rating)
# given a restaurant object and a star rating 
# (as an integer), creates a new review and 
# associates it with that customer and restaurant.


