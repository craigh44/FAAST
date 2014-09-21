class Coach

	def initialize
		@passengers = []
	end 

	def board(passenger)
		raise "Coach is full" if passenger_count == 40
		@passengers << passenger
	end

	def get_off(passenger)
		@passengers.delete(passenger)
	end

	def passenger_count
		@passengers.count
	end
end 