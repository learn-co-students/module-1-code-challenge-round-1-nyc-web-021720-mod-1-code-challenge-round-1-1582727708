class Customer
  attr_accessor :given_name, :family_name
  @all =[]
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
  end

  def full_name
    "#{given_name} #{family_name}"
  end


  def self.all 
    @@all 
  end 


  # Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants 
    Review.all.select do |review|
      review.customer == self 
  end.uniq

  #add_review(restaurant, rating)
  # given a **restaurant object** and a star rating (as an integer), 
  # creates a new review and associates 
  # it with that customer and restaurant.
  def add_review(restaurant , rating)
        new.Review(self, restaurant,raiting)
  end 
#  Returns the total number of reviews that a customer has authored
  def num_reviews
    Review.all.map do |review|
      review.self
    end 
  end 

    def self.count
      Customer.num_reviews.count 
    end 

  # Customer.find_by_name(name)`
  # - given a string of a **full name**, returns the **first customer** 
  # whose full name matches

  def self.find_by_name(name)
    Self.all.find do |customer|
      customer.full_name == name
    end 
  end 

  # Customer.find_all_by_given_name(name)`
  # - given a string of a given name, returns an **array** containing all 
  # customers with that given name

  def self.find_all_by_given_name(name)
    Self.all.map do |customer|
      customer.given_name == name
  end 
end
end

end

