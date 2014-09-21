module PassengerHolder

	DEFAULT_CAPACITY = 10

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def initialize
		@passengers = []
	end

	def accept(passenger)
		raise "Coach is full" if full?
		@passengers << passenger
	end	 

	def release(passenger)
		@passengers.delete(passenger)
	end

	def passenger_count
		@passengers.count
	end

	def full?
		passenger_count == capacity
	end
end