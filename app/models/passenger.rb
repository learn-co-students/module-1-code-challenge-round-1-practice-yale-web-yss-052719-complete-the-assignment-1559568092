class Passenger

  attr_reader :name
  @@all = []

  def initialize(name, rides, drivers, total_distance)
    @name = name
    @rides = rides
    @drivers = drivers
    @total_distance = total_distance
    @@all << self
  end

  def rides
    Ride.new.all
  end

  def drivers
    Driver.new.all
  end

  def total_distance
    
  end

  def self.all
    @@all
  end

  def self.premium_members
  end
end
