class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Reviews.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.all.map {|review| review.customer}
  end.uniq
end

