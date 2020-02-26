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

 
  def reviews
    Review.all.select do |reviews_obj|
      reviews_obj.restaurant == self
    end
  end

  def customers
    
    Review.all.map do |customers_obj|
        if customers_obj.restaurant == self
          customers_obj.customer
        end
    end.uniq
  end

end
