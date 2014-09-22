class Passenger

	def initialize 
		@balance = 10
	end

	def balance
		@balance 
	end

	def balance_count
		@balance.count
	end

	 def touch_in
	 	raise "No funds" if self.balance <= 2
	 	@balance -= 2
	 end


end

