require 'van'

describe Van do 

	let(:station) {Van.new(:capacity => 10)}
	let(:bike) {Bike.new}

	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq(10)
	end

	it "should move a bike when it's broken" do
		bike.break!
		bike.move!
		expect(bike).to be_moved
	end
end