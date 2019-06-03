require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passenger = Passenger.new("Roxanne")
driver = Driver.new("Prince")
ride = Ride.new(driver, passenger, 100)

binding.pry
