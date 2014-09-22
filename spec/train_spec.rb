
describe Train do 

	let(:train) {Train.new}

		it "Should have 4 coaches" do 
			expect(train.coach_count).to eq(4)
		end

end