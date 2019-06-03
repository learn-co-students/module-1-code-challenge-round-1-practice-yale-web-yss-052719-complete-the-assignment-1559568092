class Passenger 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |find|
            find.passenger == self
        end
    end

    def drivers
        Ride.all.select do |find|
            find.passenger == self
        end.map do |drive|
            drive.driver
        end
    end

    def total_distance
        dist_arr = Ride.all.select do |find|
            find.passenger == self
        end.map do |drive|
            drive.distance
        end
        tot_dist = dist_arr.inject(0){|sum,x| sum + x }
    end

    def self.premium_members

        self.all.select do |premium|
            premium.total_distance > 100.0
        end
    end

end
