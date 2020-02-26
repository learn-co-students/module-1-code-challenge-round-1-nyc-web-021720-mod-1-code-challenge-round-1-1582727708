require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Joseph", "Cha")
c2 = Customer.new("Chris", "Kim")
c3 = Customer.new("Peter", "Parker")
c4 = Customer.new("Tony", "Stark")
c5 = Customer.new("Kobe", "Bryant")
c6 = Customer.new("Alex", "Lee")

r1 = Restaurant.new("Restaurant 1")
r2 = Restaurant.new("Restaurant 2")
r3 = Restaurant.new("Restaurant 3")
r4 = Restaurant.new("Restaurant 4")
r5 = Restaurant.new("Restaurant 5")

rev1 = Review.new(c1,r1,4)
rev2 = Review.new(c1,r2,3)
rev3 = Review.new(c1,r3,4)
rev4 = Review.new(c4,r1,4)
rev5 = Review.new(c5,r1,2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line