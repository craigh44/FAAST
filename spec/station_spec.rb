require "station"
require "train"
require "passenger"

describe Station do

	let (:station) {Station.new}
	let (:train) {Train.new}
	
	it "should be empty after we create it" do
		expect(station.train_count).to eq(0)
	end

	it "Should let trains arrive & depart station" do 
		station.arrive(train)
		expect(station.train_count).to eq(1)
		station.depart(train)
		expect(station.train_count).to eq(0)
	end

	it "should only hold 1 train" do
		station.arrive(train)
		expect { station.arrive(train) }.to raise_error("Already a train in station")
	end
end