# class Restaurant
#   attr_reader :name
#   @@all = []

#   def initialize(name)
#     @name = name
#     self.class.all << self
#   end

#   def reviews
#     Review.all.select {|review| review.restaurant == self}
#   end

#   def self.all
#     @@all
#   end

# end

class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}.uniq
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    reviews.map {|review| review.rating}.inject(0.0) { |sum, el| sum + el } / reviews.size
  end

  def self.all
    @@all
  end
end
