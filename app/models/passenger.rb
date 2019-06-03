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
        self.rides.map do |ride|
            ride.driver
        end.uniq
    end

    def total_distance
        total_d = 0.0
        self.rides.each do |ride|
            total_d += ride.distance
        end
        total_d
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end.uniq
    end
end




