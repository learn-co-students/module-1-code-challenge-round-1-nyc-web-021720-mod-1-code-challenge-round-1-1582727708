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
end

  def self.all
    @@all
  end 

  def reviews
    Review.all.select do |review|
      review.customer == self 
    end 
  end 

  def restaurants
    reviews.map do |each_review|
      each_review.restaurant 
    end.uniq 
  end 

  def add_review(restaurant, rating=5)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews
    reviews.count 
  end 

  def self.find_by_name(name)
    Customer.all.find do |full_name|
      full_name.customer == self
    end 
  end 

  def self.find_all_by_given_name(name)
    Customer.all.map do |full_name|
      full_name.customer == self
    end 
  end 

  
end


`Customer#num_reviews`
- Returns the total number of reviews that a customer has authored
- `Customer.find_by_name(name)`
- given a string of a **full name**, returns the **first customer** whose full name matches
- `Customer.find_all_by_given_name(name)`
- given a string of a given name, returns an **array** containing all customers with that given name
`Customer#initialize`
  - Customer should be initialized with a given name and family name, both strings (i.e., first and last name, like George Washington)"

- `Customer#full_name`
  - returns the full name of the customer, with the given name and the family name concatenated, Western style.

  `Customer#restaurants`
  - Returns a **unique** array of all restaurants a customer has reviewed
- `Customer#add_review(restaurant, rating)`
  - given a **restaurant object** and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.

  - `Restaurant#reviews`
  - returns an array of all reviews for that restaurant
- `Restaurant#customers`
  - Returns a **unique** list of all customers who have reviewed a particular restaurant.