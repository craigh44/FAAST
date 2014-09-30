require_relative 'coach'

class Train

	def initialize
		@coaches = [coach1 = Coach.new, coach2 = Coach.new, coach3 = Coach.new,coach4 = Coach.new	]
	end

 	def coach_count
 		@coaches.count
 	end
end