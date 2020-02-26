require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# first name / last name
cust1 = Customer.new("Ryan", "Vaz")
cust2 = Customer.new("Jason", "Sudeakis")
cust3 = Customer.new("Jason", "Busch")
cust4 = Customer.new("Blair", "Blackwell")
cust5 = Customer.new("Piseth", "Hour")
cust6 = Customer.new("Mike", "Seigel")
cust7 = Customer.new("Tristan", "Thompson")
cust8 = Customer.new("Dikembe", "Mutumbo")

# restaurant name
rest1 = Restaurant.new("Vezzo")
rest2 = Restaurant.new("Sticky's")
rest3 = Restaurant.new("Doughboys")
rest4 = Restaurant.new("Hill & Bay")

# customer / restaurant / rating
review1 = Review.new(cust1, rest1, 97)
review2 = Review.new(cust2, rest2, 90)
review3 = Review.new(cust3, rest1, 92)
review4 = Review.new(cust4, rest3, 85)
review5 = Review.new(cust4, rest4, 56)
review6 = Review.new(cust1, rest1, 94)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line