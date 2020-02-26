require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Johnnny","noori")
c2 = Customer.new("not","mike")
c3 = Customer.new("Larry","Lob")

r1 = Restaurant.new("pizza")
r2 = Restaurant.new("pasta")

rv1 = Review.new(c1,r1,"good")
rv2 = Review.new(c2,r2,"bad")
rv3 = Review.new(c1,r2,"bad")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line