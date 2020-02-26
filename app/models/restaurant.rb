class Restaurant
  attr_reader :name, :review, :customer
@@all=[]
  def initialize(name)
    @name = name
    @review=review
    @Customer=customer
    self.class.all << self

  end
  def self.all 
    @@all
  end
  def reviews
    Review.all.select do |r|
      r.restaurant == self 
    end
  end
    def customers 
  
      end

  end

