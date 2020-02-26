class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  #returns an array of all reviews for that restaurans
  def reviews
    Review.all.select do |review_obj|
      review_obj.restaurant == self
    end
  end
  #Returns a unique list of all customers who have reviewed a particular restaurant.
  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

end
