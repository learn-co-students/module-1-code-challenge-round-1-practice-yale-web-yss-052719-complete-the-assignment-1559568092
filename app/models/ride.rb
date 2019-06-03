class Ride
	attr_reader :passenger, :driver, :distance
	@@all = []
	def initialize(passenger, driver, distance)
		@passenger = passenger
		@driver = driver
		@distance = distance.to_f
		@@all << self
	end

	def self.all
		@@all
	end

	def self.average_distance
		total = 0
		self.all.each do |ride|
			total += ride.distance 
		end
		total/self.all.count
	end

end
