class Ride
    attr_reader :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance * 1.0
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def distance
        @distance
    end

    def self.average_distance
        sum = 0
        self.all.each do |ride|
            sum += ride.distance
        end
        sum / self.all.size
    end


end
