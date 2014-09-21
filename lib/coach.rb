require_relative "passenger_holder"

class Coach

	include PassengerHolder

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
		@passengers = []
	end
end 