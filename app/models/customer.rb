class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    Customer.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all 
    @@all
  end

  def num_reviews
    Review.all.select do |cus_obj|
      cus_obj.customer == self
    end.length
  end

  def self.find_by_name(name)
    Customer.all.find do |cus_obj|
      cus_obj.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do |cus_obj|
      cus_obj.full_name == name
    end
  end

  def add_review(restaurant,rating)
    Review.new(self,restaurant,rating)

  end



end
