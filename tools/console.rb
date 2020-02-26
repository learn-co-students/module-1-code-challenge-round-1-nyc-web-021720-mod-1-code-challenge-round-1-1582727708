require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Sally", "Smith")
customer2 = Customer.new("Greg", "Smith")
customer3 = Customer.new("Mike", "Smith")

restaurant1 = Restaurant.new("Polo")
restaurant2 = Restaurant.new("Maison Premiere")
restaurant3 = Restaurant.new("Rachel's")

review1 = Review.new(customer1, restaurant1, 7)
review2 = Review.new(customer2, restaurant1, 6)
review3 = Review.new(customer2, restaurant2, 5)
review4 = Review.new(customer3, restaurant3, 8)
review5 = Review.new(customer3, restaurant3, 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line