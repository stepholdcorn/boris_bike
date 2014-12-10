require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer  do
	
	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it "should show error message when there are no bikes" do
		expect(holder.bike_count).to eq(0)
		holder.release(bike)
		expect "There are no bikes available"
	end

	it "should not release something that is not a bike" do
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
		holder.release(!bike)
		expect "I don't understand that"
	end

	it "should not dock something that is not a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(!bike)
		expect "I don't understand that"
	end
end