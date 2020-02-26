class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end.uniq
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

end
