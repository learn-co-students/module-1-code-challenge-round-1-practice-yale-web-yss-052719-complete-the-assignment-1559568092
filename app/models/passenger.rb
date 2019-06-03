class Passenger
    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        self.rides.map {|ride| ride.driver}
    end

    def total_distance
        sum = 0
        self.rides.each do |ride|
            sum += ride.distance
        end
        sum
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance >= 100
        end
    end
end

