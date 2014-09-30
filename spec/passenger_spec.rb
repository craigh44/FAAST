require "passenger"
require "station"

describe Passenger do 

	let(:passenger) {Passenger.new}
	let(:station) { double :station}

it "Should have a balance when created" do
	expect(passenger.balance).to eq(10) 
end

 it "Should -2 from balance when passenger touches in" do 
 	passenger.touch_in(station)
 	expect(passenger.balance).to eq(8)
 end

  it "should not be able to touch in if balance less than 2" do
  	4.times {passenger.touch_in(station)}
   	expect{passenger.touch_in(station)}.to raise_error("No funds")
   end
end
