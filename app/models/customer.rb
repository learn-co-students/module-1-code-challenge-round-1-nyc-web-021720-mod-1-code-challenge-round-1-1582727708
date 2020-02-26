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

  #could potentially put reviews into a module
  def reviews
    Review.all.select {|rev_inst| rev_inst.customer == self}
  end

  def restaurants
    reviews.map {|rev_inst| rev_inst.restaurant}.uniq
  end

  #Could change this to handle a case where if the same person tries to review twice it rejects them
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    reviews.length
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.select {|customer| customer.given_name == name}
  end
  

end
