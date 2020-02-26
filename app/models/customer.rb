class Customer
  #names are 'George Washington' format

  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    Customer.all << self
  end

  def self.all
    @@all
  end 

  def full_name
    "#{given_name} #{family_name}"
  end

  


end
