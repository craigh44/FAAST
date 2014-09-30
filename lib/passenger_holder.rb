module PassengerHolder

	DEFAULT_CAPACITY = 40

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def initialize
		@passengers = []
	end

	def add(passenger)
		@passengers << passenger
	end

	def accept(passenger, place)
		raise "Coach is full" if full?
		@passengers << passenger
		place.release(passenger)
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