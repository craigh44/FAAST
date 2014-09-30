require "passenger_holder"	
require "passenger"
require "station"

class PersonHolder; include PassengerHolder; end

describe PassengerHolder do

let(:holder) {PersonHolder.new}
let(:passenger) {Passenger.new}
let(:station) {Station.new}


	it "should be able to accept passengers" do 
		holder.accept(passenger, station)
		expect(holder.passenger_count).to eq(1)
	end

		it "should be able to release passengers" do
		holder.release(passenger)
		expect(holder.passenger_count).to eq(0)
	end

end