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
  #gives reviews customer has made
  def reviews
    Review.all.select do |review_obj|
      review_obj.customer == self
    end
  end
  #Returns a unique array of all restaurants a customer has reviewed
  def restaurants  
    self.reviews.map do |review|
      review.restaurant
    end
  end

  #given a restaurant object and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.length
  end

  def self.find_by_name(name)
    Review.all.find do |review|
      review.customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    Review.all.select do |review|
      review.customer.given_name == name
    end
  end
end
