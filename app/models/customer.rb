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

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    reviews.count
  end 

  def self.find_by_name(full_name_param)
    all.find do |customer|
      customer.full_name == full_name_param
    end
  end

  def self.find_all_by_given_name(given_name_param)
    all.select do |customer|
      customer.given_name == given_name_param
    end
  end

  def self.all
    @@all
  end
end
