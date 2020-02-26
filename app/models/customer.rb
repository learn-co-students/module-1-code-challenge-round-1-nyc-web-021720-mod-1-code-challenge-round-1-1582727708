class Customer
  attr_accessor :given_name, :family_name
  @@all=[]
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    Customer.all << self
  end
  
  def self.all
    @@all
  end 

  def full_name
    "#{given_name} #{family_name}"
  end
   
  #helper method 
  def find_reviews 
    Review.all.select{|review| review.customer == self}
  end 
  
  def restaurants
    self.find_reviews.map{|review| review.restaurant}.uniq
  end 
  
  def add_review(restaurant,rating)
    Review.new(self,restaurant,rating)
  end 
  
  def num_reviews 
    self.find_reviews.length
  end 

  def self.find_name(name)
    Customer.all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    Customer.all.select{|customer| customer.given_name == name}
  end 
end
