require_relative '../config/environment.rb'
require_relative '../app/models/driver.rb'
require_relative '../app/models/passenger.rb'
require_relative '../app/models/ride.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
phill = Driver.new("Phill")
brenda = Driver.new("Brenda")
jacob = Driver.new("Jacob")
gigi = Driver.new("Gigi")


tommy = Passenger.new("Tommy")
jack = Passenger.new("Jack")

ride1 = Ride.new(phill, tommy, 3.4)
ride3 = Ride.new(jacob, tommy, 7.2)
ride4 = Ride.new(gigi, tommy, 99.9)
ride5 = Ride.new(gigi, jack, 61.2)
ride2 = Ride.new(brenda, jack, 6.2)

tommy.rides
tom_drivers = tommy.drivers
tommy.total_distance
gigi.passenger_names

Passenger
binding.pry
