class Restaurant
  attr_reader :name #(no changing the name after instantiation)
  
  def initialize(name)
    @name = name
  end

  #not adding #name method because of attr_reader

end
