class Driver

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger_names
        Ride.all.select do |ride|
            ride.driver == self
        end.map do |ride|
            ride.passenger.name
        end
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def self.mileage_cap(distance)
        Ride.all.select do |ride|
            ride.distance >= distance
        end.map do |ride|
            ride.driver
        end.uniq
    end
end

