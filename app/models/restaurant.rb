class Restaurant
  attr_reader :name
  #@@all = []
  def initialize(name)
    @name = name
    #self.class.all << self
   
  end
  # def self.all
  #   @@all
  # end
    def reviews 
      Review.all.select do |r|
        r.restaurant == self
      end
    end

    def customers
      reviews.map do |c|
        c.customer
      end.uniq
    end

    

end
