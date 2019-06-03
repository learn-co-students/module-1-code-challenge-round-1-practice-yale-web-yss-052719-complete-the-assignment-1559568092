class Driver

    @@all = []
    
    def initialize(name)
        @name = name

        @@all << self
    end

    def passenger_names
        Ride.all.select do |find|
            find.driver == self
        end.map do |pass|
            pass.passenger
        end.uniq
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |find|
            find.driver == self
        end
    end

    def self.mileage_cap(distance)
        self.all.select do |mile|
            mile.distance > distance
        end
    end
end
