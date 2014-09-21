require "coach"
require "passenger"
require "train"

 
describe Coach do 

let(:coach) {Coach.new(:capacity => 40)}
let(:passenger) {Passenger.new}

	def fill_coach
		40.times {coach.accept(passenger)}
	end

	it "Should be able to set default capacity on initilization" do 
		expect(coach.capacity).to eq(40)
	end

	it "Should raise error if coach full" do 
		fill_coach
		expect {coach.accept(passenger)}.to raise_error("Coach is full")
	end

end