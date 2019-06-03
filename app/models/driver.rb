class Driver

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passenger_names
        self.rides.map do |ride|
            ride.passenger
        end.uniq
    end

    def total_distance
        # self.rides.reduce do |total_distance, ride|
        #     total_distance + ride.distance
        # end
        total_distance = 0
        self.rides.each do |ride|
            total_distance += ride.distance
        end
        total_distance
    end

    def self.mileage_cap(distance)
        @@all.select do |driver|
            driver.total_distance > distance
        end
    end

end
