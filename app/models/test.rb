require "pry"
require_relative './review.rb'
require_relative './customer.rb'
require_relative './restaurant.rb'

#git add . && git commit -m ""

john = Customer.new("john", "cena")
donald = Customer.new("donald", "trump")
jesus = Customer.new("jesus", "christ")
jay = Customer.new("jay", "z")
billy = Customer.new("billy", "bob")

big_boy = Restaurant.new("Big Boy")
mcdonalds = Restaurant.new("Mcdonalds")
red_lob = Restaurant.new("Red Lobster")
kfc = Restaurant.new("KFC")
 
review1 = Review.new(donald,kfc,5)
review2 = Review.new(jesus,kfc,1)

 binding.pry 