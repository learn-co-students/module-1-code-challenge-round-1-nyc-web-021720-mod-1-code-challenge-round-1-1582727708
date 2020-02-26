require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Uriel", "Rodriguez") 
customer2 = Customer.new("Danny", "Camacho")
customer3 = Customer.new("Uriel", "Rodriguez")
restaurant1 = Restaurant.new("Cava")
restaurant2 = Restaurant.new("Burger King")
review1_customer1 = Review.new(customer1, restaurant1, 5)
review1_customer2 = Review.new(customer2, restaurant2, 3)
review2_customer2 = Review.new(customer2, restaurant1, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line