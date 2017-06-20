class WeathersController < ApplicationController
  def index


    city = params[:city]|| "Chicago"
    state = params[:state]|| "IL"




    @channel = Unirest.get(URI.decode("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{ city }%2C%20#{ state }%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")).body["query"]["results"]["channel"]


    @temp_unit = @channel["units"]["temperature"]
    @temperature = @channel["item"]["condition"]["temp"]
    @city = @channel["location"]["city"]
    @state = @channel["location"]["region"]

    @forecasts = @channel["item"]["forecast"].first(5)

    @image_description = @channel["item"]["description"]

    @image = /(?<=src=")(.*).gif(?=")/.match(@image_description)

  end
end
