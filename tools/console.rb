require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

vanessa_martinez = Customer.new("Vanessa", "Martinez")
jeffrey_martinez = Customer.new("Jeffrey", "Martinez")
patricia_rodriguez = Customer.new("Patricia", "Rogriguez")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line