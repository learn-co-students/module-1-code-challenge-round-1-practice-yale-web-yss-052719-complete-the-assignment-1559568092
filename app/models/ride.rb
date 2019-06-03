class Ride
    attr_accessor :passenger, :driver, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total_d = 0.0
        self.all.each do |ride|
            total_d += ride.distance
        end
        num_rides = self.all.count
        avg = total_d/num_rides
        avg
    end
end



