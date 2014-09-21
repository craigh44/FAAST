class Passenger

DEFAULT_BALANCE = 10

	def initialize(options = {})
		self.balance = options.fetch(:balance, balance)
		@balance = []
	end

	def balance
		@balance = DEFAULT_BALANCE
	end

	def balance=(value)
		@balance = value
	end

	def balance_count
		@balance.count
	end
end