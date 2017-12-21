require '../weather_test/lib/weather_parser.rb'

class WelcomeController < ApplicationController
  def index
    @s = get_weather_forecast(49.83, 24)
   # p @s
  end
  def ajax
    p 'AJAX'
  end
end
