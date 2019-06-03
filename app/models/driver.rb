class Driver
    @@all  = []
    attr_accessor :name
    def initialize(name)
        @@all << self
        @name = name
       
    end

    def self.all 
        @@all
    end

    def passenger_names
        x = []
        Ride.all.each do |ride| 
            if ride.driver == self
                x << ride.passenger 
            end
        end
        x.uniq
    end
    
    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end
 
    def self.mileage_cap(distance)
        Ride.all.select do |ride|
            ride.distance > distance
        end
    end
  
end