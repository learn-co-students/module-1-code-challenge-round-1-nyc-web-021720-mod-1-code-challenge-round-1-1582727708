require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new("Italian")
rest2 = Restaurant.new("Indian")
rest3 = Restaurant.new("Mexican")
rest4 = Restaurant.new("Chinese")

cust1 = Customer.new("Rob", "Not")
cust2 = Customer.new("Mike", "Q")
cust3 = Customer.new("Uriel", "Rod")
cust4 = Customer.new("Yahya", "Gok")
cust5 = Customer.new("Rob", "McG")

cust1.add_review(rest1, 3)
cust1.add_review(rest2, 4)

cust2.add_review(rest1, 4)
cust2.add_review(rest3, 5)

cust3.add_review(rest4, 2)
cust3.add_review(rest2, 4)
cust3.add_review(rest3, 5)

cust4.add_review(rest1, 3)
cust4.add_review(rest4, 1)

cust5.add_review(rest3, 5)
cust5.add_review(rest4, 2)

cust1.add_review(rest1, 4)
cust2.add_review(rest3, 4)
cust3.add_review(rest2, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line