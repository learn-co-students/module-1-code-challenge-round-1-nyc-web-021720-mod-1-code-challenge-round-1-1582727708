class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    Customer.all << self
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def self.all
    @@all 
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def review
    Review.all.select do |restaurant|
      restaurant.customer == self
    end
  end
      
  def restaurants
    review.map do |reviews|
      reviews.restaurant
    end.uniq
  end

  def find_by_name(full_name)
    Review.all.find do |customer_name|
      customer_name.full_name == self
    end
  end

  def find_all_by_given_name(first_name)
    Review.all.map do |customer|
      customer.full_name == self
    end
  end

  def num_reviews
    review.count
  end

end
