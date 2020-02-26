require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rest1 = Restaurant.new("Mcdonalds")
rest2 = Restaurant.new("Chipotle")

c1 = Customer.new("Zach", "Brown")
c2 = Customer.new("Joe", "Smith")
c3 = Customer.new("Jill", "Doe")
c4 = Customer.new("Barack", "Obama")
c5 = Customer.new("Zach", "Brown")

rev1 = Review.new(c1, rest1, 4)
rev2 = Review.new(c4, rest2, 9)
rev3 = Review.new(c1, rest2, 8)
rev4 = Review.new(c1, rest2, 8)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line