
class Ride
    @all = []
    attr_reader :passenger_name, :distance, :driver

    def self.all
      @all
    end

    def initialize(passenger_name, distance, driver)
      @all << self
      @passenger_name = passenger_name
      @distance = distance
      @driver = driver
    end

    def average_distance 
