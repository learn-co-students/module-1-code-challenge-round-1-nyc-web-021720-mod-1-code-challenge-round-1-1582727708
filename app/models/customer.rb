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
  # def given_name
  #   @given_name
  # end

end







# - `Customer#given_name`
#   - returns the customer's given name
#   - should be able to change after the customer is created
# - `Customer#family_name`
#   - returns the customer's family name
#   - should be able to change after the customer is created
# - `Customer#full_name`
#   - returns the full name of the customer, with the given name and the family name concatenated, Western style.
