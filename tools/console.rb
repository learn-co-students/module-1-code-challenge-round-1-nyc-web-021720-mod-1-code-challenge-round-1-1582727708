require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
customer1 = Customer.new("logan","paul")
customer2 = Customer.new("Jeff","Muscleman")
customer3 = Customer.new("Jeffrey","Jefferson")

restaurant1 = Restaurant.new("Mcdonalds")
restaurant2 = Restaurant.new("Danny's Pizza")
restaurant3 = Restaurant.new("Grimaldi's Pizza")

review1 = Review.new("9.5/#{customer1}/#{restaurant2}")
review2 = Review.new("-6.7/#{customer3}/#{restaurant3}")
review3 = Review.new("6.7/#{customer3}/#{restaurant2}")
review4 = Review.new("16.7/#{customer2}/#{restaurant2}")
review5 = Review.new("7/#{customer1}/#{restaurant1}")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line