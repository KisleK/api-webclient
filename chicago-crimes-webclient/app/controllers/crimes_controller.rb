class CrimesController < ApplicationController

  def index
    @crimes = Unirest.get("https://data.cityofchicago.org/resource/crimes.json").body
  end
end
