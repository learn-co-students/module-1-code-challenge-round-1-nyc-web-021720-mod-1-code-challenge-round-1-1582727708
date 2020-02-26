require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



bob = Customer.new("Bob", "Sherwin") #first_name, last_name
r1 = Restaurant.new("resturnat") #Restaurant_name
#review1 = Review.new(bob, r1, 3)  #customer, Restaurant, rating(int)

review1 = bob.add_review(r1, 3)







binding.pry
0 #leave this here to ensure binding.pry isn't the last line 