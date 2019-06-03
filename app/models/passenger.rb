class Passenger

    attr_reader :name

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
            ride.passenger == self
        end
    end
    
    def drivers
        self.rides.map do |ride|
            ride.driver
        end
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

    def self.premium_members
        @@all.select do |passenger|
            passenger.total_distance > 100
        end
    end

end

