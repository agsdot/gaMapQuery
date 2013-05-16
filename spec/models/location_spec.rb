require "spec_helper"
describe Location do

  it "has an address" do
    location = Location.new( :address => "10012" )
    expect(location.address).to eq "10012"
  end

  it "gives a lat long for an address" do
    location = Location.create( :address => "10012" )
    expect(location.latitude).to be_a_kind_of Float
    expect(location.longitude).to be_a_kind_of Float
   end

  #  it "Has a Longitude that is within -180 to 180" do
  #   location = Location.create( :address => "10012")
  #   location.longitude = 200
  #   expect(location.longitude).to be_within(-180.0).of(180.0)
  # end

end

# #<Location id: 1, address: "10012", latitude: 40.7250632, longitude: -73.9976946, created_at: "2013-05-15 02:45:19", updated_at: "2013-05-15 02:45:19">