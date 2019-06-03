require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


elijah = Passenger.new("Eli")
rosa = Passenger.new("Rosa")
max = Passenger.new("Max")

prince = Driver.new("Prince")
marco = Driver.new("Marco")
ghengis = Driver.new("Genghis")

ghengis_Drives_Eli = Ride.new(ghengis, elijah, 10.00)
ghengis_Drives_rosa = Ride.new(ghengis, rosa, 17)
marco_Drives_Eli = Ride.new(marco, elijah, 15.00)
marco_Drives_max = Ride.new(marco, max, 9.00)
prince_Drives_max = Ride.new(prince, max, 7.00)
prince_Drives_rosa = Ride.new(prince, rosa, 22.00)



binding.pry
