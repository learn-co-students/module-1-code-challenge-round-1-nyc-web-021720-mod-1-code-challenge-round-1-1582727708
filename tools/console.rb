require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line



custo1 = Customer.new("ronaldo", "christiano")
custo2 = Customer.new("yahya","gok")
custo3 = Customer.new("maria", "gonzo")


restau1 = Restaurant.new("italio")
restau2 = Restaurant.new("frencco")
restau3 = Restaurant.new("turkish")
restau4 = Restaurant.new("pisto")

review1 = Review.new(custo1,restau3,4)
review1 = Review.new(custo2,restau4,5)
review1 = Review.new(cust3,restau3,3)


binding.pry 

