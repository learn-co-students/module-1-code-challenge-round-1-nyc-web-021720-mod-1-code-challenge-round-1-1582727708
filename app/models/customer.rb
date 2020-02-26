require 'pry'
class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @self.customer << all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def customer
    Reviews.select do |customer|
      reviews.customer = self
    end.uniq

    binding.pry
    puts "something"

  def add_review(customer, restaurant, rating)
    if @restaurant && @rating
      Review.new(self, restaurant, rating)
    else
      nil
  end

  def self.find_by_name(name)
    customer.find do |name|
      reviews.name = self
    end
      



end
