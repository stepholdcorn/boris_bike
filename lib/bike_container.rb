module BikeContainer

	DEFAULT_CAPACITY = 10

	attr_writer :capacity

	def bikes
		@bike ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def bike_count()
		bikes.count 
	end

	def dock(bike)
		puts "I don't understand that" if bike != bike 
		raise "Station is full" if full?
		bikes << bike 
	end

	def release(bike)
		puts "I don't understand that" if bike != bike 
		puts "There are no bikes available" if bike_count == 0
		bikes.delete(bike)
	end

	def full?
		bike_count == capacity
	end

	def available_bikes
		bikes.reject {|bike| bike.broken?}
	end

	def unavailable_bikes
		bikes.select {|bike| bike.broken?}
	end
end