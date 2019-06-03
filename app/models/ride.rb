class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        Ride.all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        sum = 0
        count = 0
        self.all.each do |ride|
            sum = sum + ride.distance
            count += 1
        end
        sum / count
    end


end
