class Driver


    attr_reader :name

    @@all = []

def initialize(name)
    @name = name
    Driver.all << self
end

def self.all
    @@all
end

def passenger_names
    Ride.all.select do |ride|
        ride.driver == self
    end.collect do |ride|
        ride.passenger.name
    end.uniq
end

def rides
    Ride.all.select do |ride|
        ride.driver == self
    end

end

def miles_driven
    total_miles = 0
    self.rides.each do |ride|
        total_miles = total_miles + ride.distance
    end
    total_miles
end

def self.mileage_cap (cap)
    self.all.select do |driver|
        driver.miles_driven > cap
    end
end



end

