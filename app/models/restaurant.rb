class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def self.all
    @@all
  end

  def restaurant_reviews 
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  def reviews
    restaurant_reviews.map do |restaurant|
      restaurant.customer
    end
  end

  def customers
    Review.all.select do |customer|
      customer.restaurant
    end.uniq
  end

  def average_star_rating
    Review.all.select do |rating|
      rating.restaurant += (rating + rating / rating)
    end
  end

end
