require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passbob = Passenger.new("Bob")
passbobby = Passenger.new("Bobby")
passglob = Passenger.new("Glob")
drivedob = Driver.new("Dob")
drivedobby = Driver.new("Dobby")
ride1 = Ride.new(passbob, drivedob, 20)
ride2 = Ride.new(passbobby, drivedobby, 50.1)
ride3 = Ride.new(passbobby, drivedob, 300)
ride4 = Ride.new(passglob, drivedobby, 102)

binding.pry
