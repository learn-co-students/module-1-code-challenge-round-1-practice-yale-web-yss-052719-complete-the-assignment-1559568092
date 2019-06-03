require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
p1 = Passenger.new("p1")
p2 = Passenger.new("p2")
p3 = Passenger.new("p3")
d1 = Driver.new("d1")
d2 = Driver.new("d2")
r1 = Ride.new(d1, p1, 200)
r2 = Ride.new(d1, p2, 50)
r3 = Ride.new(d2, p1, 150)
r4 = Ride.new(d1, p3, 500)
r5 = Ride.new(d1, p1, 20)

binding.pry
