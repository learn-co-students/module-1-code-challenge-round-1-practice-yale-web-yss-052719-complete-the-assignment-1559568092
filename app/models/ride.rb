
class Ride

    attr_accessor :driver, :passenger, :distance
    @@all =[]
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
        num = 0
        num1 = 0
        self.all.each do |ride|
            num += ride.distance.to_i
            num1 += 1
        end
        num / num1
    end
end