class Customer
  #names are 'George Washington' format

  attr_accessor :given_name, :family_name

  @@all = []

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

  
  def find_reviews
    Review.all.select do |reviews|
      reviews.customer == self
    end
  end 
  # return unique array of restaurants customer (self) has reviewed
  def restaurants
    find_reviews.map do |restaurants|
      restaurants.restaurant
    end.uniq
  end 

  def add_review(restaurant, rating)
    # customer / restaurant / rating
    Review.new(self, restaurant, rating)
  end 

  def self.find_by_name(name)
    Customer.all.find do |search|
     search.full_name ==  name
    end 
  end 

  def self.find_by_given_name(name)
    Customer.all.select do |search|
     search.full_name ==  name
    end 
  end

  def num_reviews
    find_reviews.count
  end 

end
