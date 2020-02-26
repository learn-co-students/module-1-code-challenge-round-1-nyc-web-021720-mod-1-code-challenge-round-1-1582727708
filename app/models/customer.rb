class Customer
  attr_accessor :given_name, :family_name
  @@all =[]

  def initialize(given_name, family_name) #these are strings andrew casarsa 
    @given_name = given_name
    @family_name  = family_name
    Customer.all << self
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    reviews.map {|review| review.restaurant}
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurants, rating)
  end

  def num_reviews
    reviews.count
  end

  def self.find_by_name(full_name) ##
    Customer.all.find {|customer| customer.full_name == self}
  end

  def full_name
    # Customer.all
    "#{given_name} #{family_name}"
  end

  # def self.given_names
  #   self.all.map {|customer| customer.given_name}
  # end

  def self.find_all_by_given_name(name)
    # if name == given_name

    self.all.find {|customer| customer.name == self}
    # end
  end

  # def self.find_all_by_given_name(name)
  #   self.given_names.map {|given_name| given_name == name}
  # end

  def self.all
    @@all
  end
end
