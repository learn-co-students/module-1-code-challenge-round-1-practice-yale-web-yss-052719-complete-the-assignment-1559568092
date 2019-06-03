require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ganesh = Passenger.new("Ganesh")
max = Passenger.new("Max")
prince = Passenger.new("Prince")

gigi = Driver.new("Gigi")
jenna = Driver.new("Jenna")
xavier = Driver.new("Xavier")

ride_1 = Ride.new(gigi,prince,6)
ride_2 = Ride.new(gigi,max,10)
ride_3 = Ride.new(jenna,ganesh,100)
ride_4 = Ride.new(xavier,ganesh,500)
ride_5 = Ride.new(jenna,prince,800)
ride_6 = Ride.new(gigi,prince,300)


binding.pry
