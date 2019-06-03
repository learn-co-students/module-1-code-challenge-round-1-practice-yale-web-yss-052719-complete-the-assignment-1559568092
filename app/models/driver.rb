class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passenger_names
        self.rides.map do |ride|
            ride = ride.passenger
        end.uniq
    end

    def total_distance
        total_d = 0.0
        self.rides.each do |ride|
            total_d += ride.distance
        end
        total_d
    end
    
    def self.mileage_cap(distance)
        self.all.select do |driver|
            @total_distance > distance
        end
    end
end

            
