require 'garage'

describe Garage do 

	let(:station) {Garage.new(:capacity => 50)}
	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq(50)
	end

	it "should fix a bike" do
		bike.break!
		expect(bike).to be_broken
		bike.fix!
		expect(bike).not_to be_broken
	end

	it "should return the bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end
end