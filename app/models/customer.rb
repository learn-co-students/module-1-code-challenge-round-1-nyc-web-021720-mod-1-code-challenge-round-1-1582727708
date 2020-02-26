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

  def restaurants
    Review.all.select do |review|
      review.customer == self
    end.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def self.find_by_name(full_name)
    self.all.find {|customer| customer.full_name == full_name}
  end

  def self.find_all_by_given_name
    self.all.select {|customer| customer.given_name == given_name}
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.length
  end

end

# Customer#num_reviews
# Returns the total number of reviews that 
# a customer has authored




