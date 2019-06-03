class Passenger
    @@all = []
    attr_accessor :name
    
    def initialize(name)
        @@all << self
        @name = name
    end

    def self.all 
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        x = []
        Ride.all.each do |ride|
            ride.passenger == self
            x << ride.driver
        end
        x.uniq
    end

    def total_distance
        x = 0
        Ride.all.each do |ride|
            if ride.passenger == self
                x = x + ride.distance
            end
        end
        x
    end

    def self.premium_members
       Passenger.all.select do |passenger|
        passenger.total_distance > 100
    end
end
end