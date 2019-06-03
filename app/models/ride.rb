class Ride
    attr_reader :passenger, :driver, :distance

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
        total = @@all.map do |ride|
            ride.distance
        end.inject do |sum, n|
            sum + n 
        end

        average_distance = total * 1.0 / @@all.size
    end
end
