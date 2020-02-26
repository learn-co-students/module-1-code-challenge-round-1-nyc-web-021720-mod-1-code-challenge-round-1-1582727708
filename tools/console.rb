require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("Charlie", "Brown")
customer2 = Customer.new("Tashawan", "Chett")
customer3 = Customer.new("Eliot", "Henson")

restaurant1 = Restaurant.new("McDonalds")
restaurant2 = Restaurant.new("FiveGuys")
restaurant3 = Restaurant.new("Chipotle")

review1 = Review.new("Charlie", "McDonalds", 56)
review2 = Review.new("Charlie", "FiveGuys,", 72)
review3 = Review.new("Eliot", "Chipotle", 48)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line