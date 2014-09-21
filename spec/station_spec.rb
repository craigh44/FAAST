require "station"
require "train"
require "passenger"
require "money"

describe Station do

	let (:station) {Station.new}
	let (:train) {Train.new}
	let (:passenger) {Passenger.new}
	let (:money) {Money.new}
	
	it "should be empty after we create it" do
		expect(station.train_count).to eq(0)
		expect(station.passenger_count).to eq(0)
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

	it "Should allow passengers on & off" do 
		expect(station.passenger_count).to eq(0)
		station.touch_on(passenger)
		expect(station.passenger_count).to eq(1)
		station.touch_off(passenger)
		expect(station.passenger_count).to eq(0)
	end

	#it "Should not let passengers onto station if have less that £2" do
	#	passenger.no_money(money)
	#	expect{station.touch_on(passenger)}.to raise_error("Not enough money")
	#end
end