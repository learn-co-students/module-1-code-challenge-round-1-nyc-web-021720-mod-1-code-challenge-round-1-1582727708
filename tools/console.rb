require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Andrew", "Casarsa")
customer2 = Customer.new("Leah", "Abraham")
customer3 = Customer.new("Ethan", "Abraham")
customer4 = Customer.new("Andrew", "Lohner")
customer5 = Customer.new("Evan", "Small")
customer6 = Customer.new("Hallie", "Stebbins")
customer7 = Customer.new("Bob", "Smith")
customer8 = Customer.new("Peter", "Cohen")
customer9 = Customer.new("Chelsey", "Kovel")
customer10 = Customer.new("Gary", "Casarsa")

r1 = Restaurant.new("Blue Hill")
r2 = Restaurant.new("Good Eats")
r3 = Restaurant.new("Slow Market")
r4 = Restaurant.new("Farm to Table")


rate1 = 1
rate2 = 2
rate3 = 3
rate4 = 4
rate5 = 5

customer1.add_review(r2, rate5)
customer1.add_review(r3, rate4)
customer1.add_review(r4, rate2)
customer2.add_review(r1, rate5)
customer3.add_review(r1, rate5)
customer4.add_review(r1, rate5)
customer2.add_review(r2, rate1)
customer2.add_review(r2, rate2)
# review1 = Review.new(customer1, r1, rate5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line