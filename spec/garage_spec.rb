require 'garage'

describe Garage do 

	let(:garage) {Garage.new(:capacity => 50)}
	let(:bike) {double :bike, broken?: false}
	let(:broken_bike) {double :broken_bike, broken?: true}

	it "should allow setting default capacity on initialising" do
		expect(garage.capacity).to eq(50)
	end

	it "should fix a bike" do
		expect(broken_bike).to receive(:fix!)
		garage.receive(broken_bike)
		expect(garage.bikes).to eq([broken_bike])
	end
end