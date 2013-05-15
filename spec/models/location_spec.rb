require "spec_helper"
describe Location do

  it "has an address" do
    location = Location.new( :address => "10012" )
    expect(location.address).to eq "10012"
  end

end