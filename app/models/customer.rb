class Customer
  attr_accessor :given_name, :family_name, :restaurant
@@all=[]
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @restaurant=restaurant
    self.class.all << self
  end
  def self.all 
    @@all
  end


  def full_name
    "#{given_name} #{family_name}"
  end
  def restaurants
    # Restaurant.all.select do |customer|
    #   customer.restaurant==self
    #    end
      end
      def self.find_by_name(name)
        self.all.find do |n|
          n.full_name == name
        end
      end
    


end
