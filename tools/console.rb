require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

vanessa_martinez = Customer.new("Vanessa", "Martinez")
jeffrey_martinez = Customer.new("Jeffrey", "Martinez")
patricia_rodriguez = Customer.new("Patricia", "Rogriguez")

almond = Restaurant.new("Almond")
jims = Restaurant.new("Jims")
dons = Restaurant.new("Dons")

review1 = Review.new("Vanessa", "Martinez", "Almond", 5)
review2 = Review.new("Jeffrey", "Martinez", "Jims", 3)
review3 = Review.new("Patricia", "Rodriguez", "Dons", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line