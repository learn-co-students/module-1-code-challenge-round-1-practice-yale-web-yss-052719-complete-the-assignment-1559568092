class Ride

    @@all = []
    
    attr_reader :driver, :passenger, :distance
    
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
        milage = self.all.map do |dist|
            dist.distance
        end

        milage_sum = milage.inject(0){|sum,x| sum + x }
        miles = milage_sum * 1.0 / milage.size
    end

end
