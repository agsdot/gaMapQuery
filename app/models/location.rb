class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?


  validates_presence_of :address
end
