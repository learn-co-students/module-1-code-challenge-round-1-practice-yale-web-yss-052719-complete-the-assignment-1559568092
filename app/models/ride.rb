class Ride
    @@all = []
    attr_reader :driver, :distance, :passenger
    def initialize(driver, passenger, distance)
        @@all << self 
        @driver = driver
        @passenger = passenger
        @distance = distance
    end 
    
    def self.all 
        @@all
    end

    def self.average_distance
        x = 0
        self.all.each do |ride|
           x = x + ride.distance
        end
        x/@@all.length
    end
end