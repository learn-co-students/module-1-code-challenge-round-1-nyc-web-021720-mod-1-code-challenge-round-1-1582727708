require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Jacky","Lin")
cust2 =Customer.new("Janet","Lin")
cust3 =Customer.new("Jessica","Lin")
cust4 =Customer.new("Sandy","Wu")

Res1 = Restaurant.new("Popeyes")
Rest2 = Restaurant.new("KFC")
Rest3 =Restaurant.new("Popeyes")
Review1 = Review.new("Jacky Lin", "Popeyes", "10")





binding.pry
0 #leave this here to ensure binding.pry isn't the last line