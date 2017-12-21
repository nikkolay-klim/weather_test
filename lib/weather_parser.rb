require 'net/http'
require 'json'


def get_weather_forecast(lat, lng)
    uri = URI("https://business.weatherbug.com/api/forecasts/daily?includeObservation=true&lat=" + lat.to_s + "&lng=" + lng.to_s + "+&timestamp=1510824671035")                          
    parsed_data = JSON.parse(Net::HTTP.get(uri))
    # p parsed_data[0]['Night']['DetailedDescription']
    return parsed_data[0]['Night']['DetailedDescription']
end
 # p get_weather_forecast(49.83, 24)