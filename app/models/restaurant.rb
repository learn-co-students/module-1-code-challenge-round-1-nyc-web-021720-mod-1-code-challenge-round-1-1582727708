class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def self.all
    @@all
  end

end
