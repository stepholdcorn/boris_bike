require 'user'

describe User do

	let(:user) {User.new}
	let(:bike) {double :bike}
	let(:station) {double :station}
	
	it "should not have a bike" do
		expect(user).not_to have_bike
	end

	it "can rent a bike from a station" do
		expect(station).to receive(:release_a_bike)
		user.rent_bike_from(station)
	end

	it "has the bike after renting it" do
		user.rent!
		expect(user).to have_bike
	end

	it "can fall off the bike and break it" do
		expect(bike).to receive(:break)
		user.fall!(bike)
	end

	it "should return the bike to a station" do
		expect(station).to receive(:dock_a_bike)
		user.return_bike_to(station)
	end

	it "should not have a bike after returning it" do
		user.return_bike!
		expect(user).not_to have_bike
	end
end