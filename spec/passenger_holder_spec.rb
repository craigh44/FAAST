require "passenger_holder"	
require "passenger"

class PersonHolder; include PassengerHolder; end

describe PassengerHolder do 

let(:holder) {PersonHolder.new}
let(:passenger) {Passenger.new}


it "should be able to accept and release passengers" do 
	holder.accept(passenger)
	expect(holder.passenger_count).to eq(1)
	holder.release(passenger)
	expect(holder.passenger_count).to eq(0)
end

	






end