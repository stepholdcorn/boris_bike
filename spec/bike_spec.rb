require 'bike'

describe Bike do 

	let(:bike) {Bike.new}
	let(:station) {DockingStation.new(:capacity => 20)}

	it "should not be broken after we create it" do
		expect(bike).not_to be_broken
	end

	it "should be able to break" do 
		bike.break!
		expect(bike).to be_broken
	end

	it "should be able to get fixed" do
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
	end

	it "should be able to return broken bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		station.dock(working_bike)
		station.dock(broken_bike)
		expect(station.unavailable_bikes).to eq([broken_bike])
	end
end