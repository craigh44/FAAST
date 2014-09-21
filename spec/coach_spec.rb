require "coach"
require "passenger"
require "train"

 
describe Coach do 

let(:passenger) {Passenger.new}
let(:coach) {Coach.new}

	it "Should allow passeners to board and get off coach" do 
		coach.board(passenger)
		expect(coach.passenger_count).to eq(1)
		coach.get_off(passenger)
		expect(coach.passenger_count).to eq(0)
	end

	it "Should raise error if coach full" do 
		40.times {coach.board(passenger)}
		expect {coach.board(passenger)}.to raise_error("Coach is full")
	end

end