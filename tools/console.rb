require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Joseph", "Guzzardo")
c2 = Customer.new("Grace", "Guzzardo")
c3 = Customer.new("Kara", "Dodson")
c4 = Customer.new("Minaal", "Khan")

r1 = Restaurant.new("Pizza chef")
r2 = Restaurant.new("Cacarinos")
r3 = Restaurant.new("Nanas")

review1 = Review.new(c1, r1, 9)
review2 = Review.new(c2, r1, 8)
review3 = Review.new(c1, r3, 7)
review4 = Review.new(c4, r3, 2)
review5 = Review.new(c4, r3, 4)

c4.add_review(r2, 1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line