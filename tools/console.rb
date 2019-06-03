require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passenger1 = Passenger.new("A")
passenger2 = Passenger.new("B")
passenger3 = Passenger.new("C")
passenger4 = Passenger.new("D")
passenger5 = Passenger.new("E")
passenger6 = Passenger.new("F")

driver1 = Driver.new("A")
driver2 = Driver.new("B")
driver3 = Driver.new("C")
driver4 = Driver.new("D")
driver5 = Driver.new("E")
driver6 = Driver.new("F")

ride1 = Ride.new(driver1, passenger1, 30.0)
ride2 = Ride.new(driver1, passenger4, 2.3)
ride3 = Ride.new(driver1, passenger5, 24.2)
ride4 = Ride.new(driver3, passenger3, 4.2)
ride5 = Ride.new(driver4, passenger2, 230.2)
ride6 = Ride.new(driver4, passenger3, 1.2)
ride7 = Ride.new(driver5, passenger1, 102.8)
ride8 = Ride.new(driver5, passenger5, 201.2)
ride9 = Ride.new(driver5, passenger6, 80.0)
ride10 = Ride.new(driver1, passenger1, 4.3)

binding.pry
