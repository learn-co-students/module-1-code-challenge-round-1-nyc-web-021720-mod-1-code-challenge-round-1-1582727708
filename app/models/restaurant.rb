class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def reviews
    Review.all.map do |review_obj|
      review_obj
    end
  end

  def customers
    Customer.all.map do |customer_obj|
      customer_obj
    end.uniq
  end

  def average_star_rating
    #return average star rating for resturant 
    #go over all reviews -> get rating -> add -> divide by num ratings
    total = 0
    reviews = Review.all.map do |review|
      review
    end
    reviews.map do |review|
      total += review.rating
    end
    total / reviewsx.size

  #we want reviews to be an array of the ratings for a resturant
  #   reviews = Review.all.map do |review_num|
  #     review_num.rating
  #   end
  #   avg = reivews.inject{|sum, el| sum + el}.to_f /reviews.size
  #   #avg

  #  end
  end
end
 