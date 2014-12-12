require_relative 'bike_container'

class Van
	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def move_broken(bike)
		bike.move
	end

	def move_fixed(bike)
		bike.move
	end
end 
