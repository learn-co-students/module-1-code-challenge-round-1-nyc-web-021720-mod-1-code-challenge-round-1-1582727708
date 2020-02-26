class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Reviews.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map do|review| 
      review.customer
    end.uniq
  end

  def average_star_rating
      ratings = self.reviews.map {|reviews| reviews.rating}
      ratings.reduce[:+] / ratings.length
  end
end

