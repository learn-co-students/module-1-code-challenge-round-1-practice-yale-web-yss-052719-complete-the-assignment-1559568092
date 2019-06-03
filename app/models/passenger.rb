class Passenger

    @@all = []
    
    attr_reader :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.find_all {|passenger| passenger.total_distance > 100 }
    end

    def rides
        Ride.all.find_all {|ride| self == ride.passenger}
    end

    def drivers
        rides.map {|ride| ride.driver }
    end

    def total_distance
        distances = rides.map {|ride| ride.distance }
        distances.reduce(:+)
    end

end
