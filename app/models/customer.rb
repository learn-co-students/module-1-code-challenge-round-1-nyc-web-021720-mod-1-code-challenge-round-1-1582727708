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

  # - `Customer#restaurants`
  # - Returns a **unique** array of all restaurants a customer has reviewed

  # helper method
  def reviews
    Review.all.select do |review|
      review.customer == self 
    end
  end 

  def restaurants
    reviews.map do |review|
      review.restaurant 
    end.uniq
  end

  # - `Customer#add_review(restaurant, rating)`
  # - given a **restaurant object** and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating) 
  end

  # - `Customer#num_reviews`
  # - Returns the total number of reviews that a customer has authored
  def num_reviews 
    reviews.count 
  end

  # - `Customer.find_by_name(name)`
  # - given a string of a **full name**, returns the **first customer**
  # "George Washington" 
  def self.find_by_name(name)
    first_name = name.split(" ")[0]
    last_name = name.split(" ")[1]
    self.all.find do |customer| 
      customer.given_name == first_name && customer.family_name == last_name
    end
  end

  # - `Customer.find_all_by_given_name(name)`
  # - given a string of a given name, returns an **array** containing all customers with that given name
  def self.find_all_by_given_name(name)
    first_name = name.split(" ")[0]
    last_name = name.split(" ")[1]
    self.all.select do |customer|
      customer.given_name == first_name && customer.family_name == last_name
    end 
  end

end
