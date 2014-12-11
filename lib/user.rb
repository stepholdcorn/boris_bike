class User
	def initialize
		@bike = nil
	end

	def has_bike?
		!@bike.nil?
	end

	def rent_bike_from(station)
		station.release_a_bike
	end

	def rent!
		@bike = true
	end
end