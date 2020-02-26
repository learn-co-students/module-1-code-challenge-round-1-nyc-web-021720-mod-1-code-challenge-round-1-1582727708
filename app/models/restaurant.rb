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

  #could potentially put reviews into a module
  def reviews
    Review.all.select {|rev_inst| rev_inst.restaurant == self}
  end

  def customers
    reviews.map {|rev_inst| rev_inst.customer}.uniq
  end

  def ratings
    reviews.map {|rev_inst| rev_inst.rating}
  end

  def average_star_rating
    ratings.inject{|sum, num| sum + num}.to_f / reviews.length
  end

end
