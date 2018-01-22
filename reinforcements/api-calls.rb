require 'httparty'
require 'JSON'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)
toronto_wards_json["objects"].each do |place|
    puts place["name"]
end

canada_representatives_response = HTTParty.get('https://represent.opennorth.ca/representatives/')
canada_representatives_json = JSON.parse(canada_representatives_response.body)
puts canada_representatives_json