class Passenger

    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        Passenger.all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        self.rides.collect do |ride|
            ride.driver
        end
    end

    def total_distance
        total_distance = 0
        self.rides.each do |ride|
            total_distance = total_distance + ride.distance
        end
        total_distance
    end

    def self.premium_members
        self.all.select do |member|
            member.total_distance > 100
        end
    end
    


end


