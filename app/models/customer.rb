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
    Review.all.select do |review_obj|
      review_obj.restaurant == self
    end
  end

  def add_review(restuarant,rating)
    Review.new(self,restuarant,rating)
  end

  def review 
    Review.all.select do |review_obj|
      review_obj.customer == self 
    end
  end 
  
  def num_reviews
    self.review.count
  end

  def self.find_by_name(name)
    Review.all.find do |review_obj|
      review_obj.customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    Review.all.select do |review_obj|
      review_obj.customer.given_name == name 
    end
  end

  # - `Customer.find_by_name(name)`
  # - given a string of a **full name**, returns the **first customer** whose full name matches

end
