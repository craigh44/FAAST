require "coach"
require "passenger"
require "train"

 
describe Coach do 

include PassengerHolder



	#it "Should raise error if coach full" do 
	#	40.times {coach.accept(passenger)}
	#	expect {coach.accept(passenger)}.to raise_error("Coach is full")
	#end

end