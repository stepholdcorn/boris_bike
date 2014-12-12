require 'van'

describe Van do 

	let(:van) {Van.new(:capacity => 10)}
	let(:bike) {double :bike}

	it "should allow setting default capacity on initialising" do
		expect(van.capacity).to eq(10)
	end

	# it "should move a bike when it's fixed" do
	# 	bike.fix!
	# 	bike.move!
	# 	expect(bike).to be_moved
	# end

	it "should move a bike when it is broken" do
		expect(bike).to receive(:move)
		van.move_broken(bike)
	end

	it "should move a bike when it is fixed" do
		expect(bike).to receive(:move)
		van.move_fixed(bike)
	end
end