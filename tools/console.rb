require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver1 = Driver.new("Peter")
driver2 = Driver.new("Paul")
driver3 = Driver.new("Mary")

passenger1 = Passenger.new("Alpha")
passenger2 = Passenger.new("Beta")
passenger3 = Passenger.new("Gamma")

ride1 = Ride.new(driver1, passenger1, 101.0)
ride2 = Ride.new(driver2, passenger2, 102.0)
ride3 = Ride.new(driver3, passenger3, 5.0)
# ride4= (driver1, passenger1, 1)
# ride5 = (driver1, passenger1, 1)
# ride6 = (driver1, passenger1, 1)
# ride7 = (driver1, passenger1, 1)

# Put your variables here~!

binding.pry
0