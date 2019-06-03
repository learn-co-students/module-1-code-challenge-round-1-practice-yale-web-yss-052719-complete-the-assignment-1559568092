class Driver
	attr_accessor :name
	@@all = []
	def initialize(name)
		@name = name
		@@all << self
	end

	def rides
		Ride.all.select do |ride|
			ride.driver == self
		end
	end

	def passenger_names
		self.rides.map do |ride|
			ride.passenger
		end
	end

	def total_mileage
		total = 0
		self.rides.each do |ride|
			total += ride.distance
		end
		total
	end

	def self.all
		@@all
	end

	def self.mileage_cap(distance)
		self.all.select do |driver|
			driver.total_mileage > distance.to_f
		end
	end
end


