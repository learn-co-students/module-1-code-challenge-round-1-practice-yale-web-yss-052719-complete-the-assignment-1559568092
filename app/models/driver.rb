class Driver

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        self.all.find_all do |driver|
            distance_driven = 0
            driver.rides.each {|ride| distance_driven += ride.distance}
            distance_driven > distance
        end
    end

    def passengers
        rides.map {|ride| ride.passenger }
    end

    def rides
        Ride.all.find_all {|ride| self == ride.driver}
    end

    def passenger_names
        names = self.passengers.map {|passenger| passenger.name }
        names.uniq
    end

end
