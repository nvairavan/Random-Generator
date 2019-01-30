require 'httparty'
require 'json'

class RandomPostcodes
  include HTTParty

  base_uri 'http://api.postcodes.io'

  def random_array(number_of_postcodes)
    # return Array with the specified number of postcodes inside
    array = []
    number_of_postcodes.times do |i|
      array << generate_random_postcode
    end
    array
  end

  def generate_random_postcode
    json_result = JSON.parse(self.class.get('/random/postcodes').body)
    json_result['result']['postcode']
  end
end

rand = RandomPostcodes.new
result = rand.random_array(rand(2..10))
p result.length
p result