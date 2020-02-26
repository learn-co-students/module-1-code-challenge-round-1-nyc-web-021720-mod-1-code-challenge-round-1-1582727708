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

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    reviews.map do |review| 
      review.restaurant
    end.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_review
    reviews.length
  end

  def self.find_by_name(full_name)
    Customer.all.select {|name| name.full_name == full_name}
  end

  def self.find_by_given_name(given_name)
    Customer.all.map {|customer| customer.given_name == given_name}
  end
end
