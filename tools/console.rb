require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
pA = Passenger.new("Rich")
pB = Passenger.new("Jen")
pC = Passenger.new("Bae")

dA = Driver.new("John")
dB = Driver.new("Jay")

rA = Ride.new(dA, pA, "100")
rB = Ride.new(dB, pB, "200")
rC = Ride.new(dB, pB, "300")
rD = Ride.new(dB, pA, "240")

binding.pry
