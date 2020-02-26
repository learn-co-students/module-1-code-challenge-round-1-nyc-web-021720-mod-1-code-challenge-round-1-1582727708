require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line


# This works when typed directly into terminal, but 
# from here 'me' is returning 'nil' - not sure why 
me = Customer.new("Mike", "Quigley")


# not going to finish 
# Need to set up class assocciations 

# Review is the Link Class
# - belongs to Customer & Restaurant 

# Customer & Restaurant have many reviews 