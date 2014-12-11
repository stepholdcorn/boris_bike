require 'user'

describe User do

	let(:user) {User.new}
	let(:bike) {double :bike}
	
	it "should not have a bike" do
		expect(user).not_to have_bike
	end

	it "can rent a bike from a station" do
		old_street = double :station
		expect(old_street).to receive(:release_a_bike)
		user.rent_bike_from(old_street)
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
		old_street = double :station
		expect(old_street).to receive(:dock_a_bike)
		user.return_bike_to(old_street)
	end

	it "should not have a bike after returning it" do
		user.return_bike!
		expect(user).not_to have_bike
	end
end