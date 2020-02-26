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
    
  end
end
 