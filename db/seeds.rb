#

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Address Latitude  Longitude
# 10 East 21st Street New York 10010  40.7399977  -73.9900976 Show  Edit  Destroy
# 101 Main Street Cambridge 02142 42.36263  -71.082047  Show  Edit  Destroy
# 414 Brannan Street San Francisco 94107  37.779931 -122.394868 Show  Edit  Destroy
# 1520 2nd Street Santa Monica 90401  34.0128358  -118.495338 Show  Edit  Destroy
# 9 Back Hill London EC1R 5DF 51.5225339  -0.1094356  Show  Edit  Destroy
# 19 Prinzessinnenstraße Berlin 10969 52.50276909999999 13.4124272  Show  Edit  Destroy
# No. 23 Luard Road Wan Chai, Hong Kong 22.2788566  114.1717242 Show  Edit  Destroy
# 608 Harris St Sydney 2007 -33.8804635 151.2003379 Show  Edit  Destroy

Location.create!(address: '10 East 21st Street New York 10010', latitude: '40.7399977', longitude: '-73.9900976')
Location.create!(address: '101 Main Street Cambridge 02142', latitude: '42.36263', longitude: '-71.082047')
Location.create!(address: '414 Brannan Street San Francisco 94107', latitude: '37.779931', longitude: '-122.394868')
Location.create!(address: '1520 2nd Street Santa Monica 90401', latitude: '34.0128358', longitude: '-118.495338')
Location.create!(address: '9 Back Hill London EC1R 5DF', latitude: '51.5225339', longitude: ' -0.1094356')
# Location.create!(address: '19 Prinzessinnenstraße Berlin 10969', latitude: '52.50276909999999', longitude: '13.4124272')
Location.create!(address: 'No. 23 Luard Road Wan Chai, Hong Kong', latitude: '22.2788566', longitude: '114.1717242')
Location.create!(address: '608 Harris St Sydney 2007', latitude: '-33.8804635', longitude: '151.2003379')
