require "station"

describe Station do
	
	it "should be empty after we create it" do
		station = Station.new
		expect(station).to be_empty
	end

end