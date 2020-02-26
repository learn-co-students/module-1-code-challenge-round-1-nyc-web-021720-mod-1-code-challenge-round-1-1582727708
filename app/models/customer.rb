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
    end.uniq
  end

  
end
