class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def given_name
    @given_name
  end

  def family_name
    @family_name
  end

  def restaurants
    Review.all.map do |review_obj|
      review_obj
    end.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.count
  end

  def self.find_by_name(name)
    Customer.all.find do |c_name|
      c_name.full_name == name
    end
  end


  def self.find_all_by_name(name)
    #name is full name
    #return array of customer whos full name matches
    Customer.all.select do |c_name|
      c_name.full_name == name
    end
  end

end
 