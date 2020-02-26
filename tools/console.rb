require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
brian = Customer.new("Brian", "Desplantes")
kevin = Customer.new("Kevin", "Desplantes")
jacky = Customer.new("Jacky", "Chan")
brian2 = Customer.new("Brian", "Walter")

rest1 = Restaurant.new("Applebees")
rest2 = Restaurant.new("Cheesecake Factory")
rest3 = Restaurant.new("La Bodega")

rev1 = brian.add_review(rest1, 10)
rev2 = brian.add_review(rest2, 10)
rev3 = brian.add_review(rest3, 10)
rev4 = kevin.add_review(rest2, 7)
rev5 = kevin.add_review(rest3, 3)
rev6 = jacky.add_review(rest1, 10)
rev7 = jacky.add_review(rest2, 8)
rev8 = jacky.add_review(rest3, 2)
rev9 = kevin.add_review(rest2, 10)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line