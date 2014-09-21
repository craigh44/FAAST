require_relative "passenger_holder"

class Coach

	include PassengerHolder

	def initialize
		@passengers = []
	end
end 