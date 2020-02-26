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

  # Not neccessary because of the attr_accessor?
  # Leaving it in just in case. 
  def given_name 
    @given_name 
  end 

  def family_name
    @family_name 
  end 

  def self.all 
    @@all
  end 


end




=begin ORIGINAL 

class Customer
  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
  end

  def full_name
    "#{given_name} #{family_name}"
  end
end

ORIGINAL 

=end 