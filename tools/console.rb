require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver1 = Driver.new("Lucy")
driver2 = Driver.new("Edgar")
passenger1 = Passenger.new("Keith")
passenger2 = Passenger.new("Riley")
ride1 = Ride.new(driver1, passenger1, 100.0)
ride2 = Ride.new(driver1, passenger2, 150.0)
ride3 = Ride.new(driver2, passenger1, 75.0)
ride4 = Ride.new(driver2, passenger2, 50.0)


binding.pry
