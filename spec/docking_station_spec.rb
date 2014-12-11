require 'docking_station'

describe DockingStation do 

	let(:station) {DockingStation.new(:capacity => 20)}
	let(:bike) {double :bike}

	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq(20)
	end

	it "should be able to accept broken bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		station.dock(working_bike)
		station.dock(broken_bike)
		expect(station.unavailable_bikes).to eq([broken_bike])
	end
end