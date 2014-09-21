require "passenger"

describe Passenger do 

	let(:passenger) {Passenger.new(:balance => 10)}

it "Should have a balance when created" do
	expect(passenger.balance).to eq(10) 
end


end
