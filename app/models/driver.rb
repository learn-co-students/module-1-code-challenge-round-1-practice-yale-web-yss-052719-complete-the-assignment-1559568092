class Driver

  attr_reader :name
  @@all = []

  def initialize(name)
    @name =name
  end 

  def passenger_names
  end

  def rides
  end

  def self.all
    @@all
  end

  def self.mileage_cap(distance)
  end

end
