require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
max = Driver.new("Max")
bob = Driver.new("Bob")
bill = Driver.new("Bill")
zoe = Driver.new("Zoe")

leo = Passenger.new("Leo")
joe = Passenger.new("Joe")
simone = Passenger.new("Simone")
hanjoo = Passenger.new("Hanjoo")

Ride.new(max, leo, 3)
Ride.new(max, leo, 4)
Ride.new(max, joe, 95.3)
Ride.new(bob, leo, 50)
Ride.new(bob, joe, 5)
Ride.new(bob, hanjoo, 7)
Ride.new(zoe, hanjoo, 80)
Ride.new(max, hanjoo, 20)
Ride.new(zoe, simone, 10)
Ride.new(bill, joe, 5)

binding.pry
0