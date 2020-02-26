require 'pry'
class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

    def restaurants
      Review.all.select do |r|
        r.customer == self
      end.uniq
    end

    def add_review(restaurant, rating)

    end
    

    def self.find_by_name(full_name)
     
      @@all.find do |n|
        n.full_name
      end
    end

    def self.find_all_by_given_name(given_name)
      @@all.map do |n|
        if n.given_name == given_name
          given_name
        end
      end
    end

end

