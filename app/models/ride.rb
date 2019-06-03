class Ride

    attr_reader :driver, :passenger
    attr_accessor :distance

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
        # sum = @@all.inject do |sum, n|
        #     n.distance
        # end
        sum = 0
        @@all.each do |ride|
            sum += ride.distance
        end
        sum / @@all.length
    end

end

