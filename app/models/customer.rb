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


