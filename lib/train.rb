class Train

	def initialize
		@coaches = [Coach.new,Coach.new,Coach.new,Coach.new	]
	end

 	def coach_count
 		@coaches.count
 	end
end