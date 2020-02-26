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
-
  - `Restaurant#reviews`
  - returns an array of all reviews for that restaurant
- `Restaurant#customers`
  - Returns a **unique** list of all customers who have reviewed a particular restaurant.


- 