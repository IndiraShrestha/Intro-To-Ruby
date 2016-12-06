require 'json'
require 'rest-client'
require 'pry'
require 'httparty'
require 'darksky'

# *************************************** Program using the wunderground api  ***************************************

# class Weather 
#     attr_accessor :city, :weather

#   def initialize(city)
#     @city = city
#     @weather = []
#   end

#   def city_weather
#     response_hash = JSON.load(RestClient.get('http://api.wunderground.com/api/a68a17ccd80a1ab1/geolookup/conditions/q/'+"#{@city}"+'.json'))
#     # location = response_hash['location']['city']
#     temp_f = response_hash['current_observation']['temp_f']
#     # @weather << location
#     @weather << temp_f
#     puts @weather[0]
#     puts @weather[1]
#     binding.pry
#     puts location
#     puts temp_f
#   end 

# end  

# puts "Which city do you want to lookup the weather for?"

# for now it only working using zip code, we will have to be specific with the city so might have to use city and country

# city = gets.chomp  

# weather = Weather.new("#{city}")

# weather.city_weather


# *************************************** Program using the darksky api and darksky gem  ***************************************

# darksky = Darksky::API.new('7a174fe01eeb44ac7b197156e6d04c8c')


# forecast = darksky.forecast('37.8267','-122.4233')

# # brief_forecast = darksky.brief_forecast('42.7243','-73.6927')

# puts forecast


class Weather 
    attr_accessor :weather

  def initialize
    @weather = []
  end

  def city_weather
    response_hash = HTTParty.get('https://api.darksky.net/forecast/7a174fe01eeb44ac7b197156e6d04c8c/37.8267,-122.4233')
    # location = response_hash['location']['city']
    # puts response_hash
    temp_f = response_hash['currently']['temperature']
    # @weather << location
    @weather << temp_f
    puts @weather[0]
    # puts @weather[1]
    binding.pry
    # puts location
    puts temp_f
  end 

end  

puts "Which city do you want to lookup the weather for?"

# please input the city in the geo coordinate format like this 37.8267,-122.4233

city = gets.chomp  



weather = Weather.new

weather.city_weather



