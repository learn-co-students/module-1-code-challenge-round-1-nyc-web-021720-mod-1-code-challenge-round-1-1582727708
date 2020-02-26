require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


 #leave this here to ensure binding.pry isn't the last line
restaurant1 = Restaurant.new("Food place")
restaurant2 = Restaurant.new("Food place2")
restaurant3 = Restaurant.new("Food place3")
restaurant4 = Restaurant.new("Food place4")

customer1 = Customer.new("Sam","Ponce")
customer2 = Customer.new("Sammy","Ponce")
customer3 = Customer.new("Diana","Fuentes")
customer4 = Customer.new("Diana","Smith")

review1 = Review.new(customer1,restaurant1, 1)
review2 = Review.new(customer1,restaurant2, 2)
review3 = Review.new(customer3,restaurant3, 3)
review4 = Review.new(customer4,restaurant4, 4)

binding.pry
puts "bdg"
