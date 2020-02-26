require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Daniel", "Urbina")
c2 = Customer.new("Rick", "Thompson")
c3 = Customer.new("Joseph", "Cha")
c4 = Customer.new("Lucas", "Sousa")

ginos = Restaurant.new("Gino's Pizza")
paesanos = Restaurant.new("Paesanos")
oceania = Restaurant.new("Oceania")
applebees = Restaurant.new("Applebees")

r1 = Review.new(c1, ginos, 5)
r2 = Review.new(c2, paesanos, 5)
r3 = Review.new(c4, ginos, 3)
r4 = Review.new(c4, oceania, 3)
r5 = Review.new(c4, applebees, 2)
r6 =Review.new(c3, paesanos, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line