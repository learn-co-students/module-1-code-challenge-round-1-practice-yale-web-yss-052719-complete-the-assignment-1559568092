
class Passenger
    attr_reader :name
    # attr_accessor :rides, :drivers, :total_distance

    @@all = []
    def initialize(name)
        @name = name
        # @drivers = drivers
        # @total_distance = total_distance

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
        rides.map do |ride|
            ride.driver
        end
    end

    def total_distance
        tot = 0
        rides.each do |ride|
            tot = tot + ride.distance.to_i
        end
        tot 
    end

    def self.premium_members
        arr = []
        self.all.each do |passenger|
            if passenger.total_distance > 100
                arr << passenger
            end
        end
        arr
    end

end