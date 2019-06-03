
class Driver
    attr_accessor :name
    # :passenger_names, :rides

    @@all = []
    def initialize(name)
        @name = name
        # @passenger_names = passenger_names
        # @rides = rides

        @@all << self
    end

    def self.all
        @@all 
    end

    def passenger_names
        rides.map do |ride|
            ride.passenger.name
        end.uniq
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end


    def total_distance
        tot = 0
        rides.each do |ride|
            tot = tot + ride.distance.to_i
        end
        tot 
    end

    def self.mileage_cap(float)
        arr = []
        self.all.each do |driver|
            if driver.total_distance > float
                arr << driver
            end
        end
        arr
    end

end