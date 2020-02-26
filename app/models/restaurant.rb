class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self 
    end 
  end 


  def customers
    reviews.map do |each_review|
      each_review.customer 
    end.uniq 
  end 

end
