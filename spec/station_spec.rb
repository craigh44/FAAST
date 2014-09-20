require "station"
require "train"

describe Station do

	let (:station) {Station.new}
	let (:train) {Train.new}
	
	it "should be empty after we create it" do
		expect(station.train_count).to eq(0)
	end

	it "Should let trains arrive at station" do 
		station.arrive(train)
		expect(station.train_count).to eq(1)
	end

	it "Should let trains leave the station" do
		station.arrive(train)
		station.depart(train)
		expect(station.train_count).to eq(0)
	end

	it "should only hold 1 train" do
		station.arrive(train)
		expect { station.arrive(train) }.to raise_error("Already a train in station")
	end

end