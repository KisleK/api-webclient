class FriendsController < ApplicationController
  def index

    @friend = Friend.all
    
    @friends = []
    Unirest.get("#{ ENV["API_HOST"] }/api/v2/friends.json").body.each do |friend_hash|
      @friends << Friend.new(friend_hash)
      
    end

  end

  def new
    
  end

  def create

    friend = Unirest.post(
                            "#{ ENV["API_HOST"] }/api/v2/friends.json",
                            headers: {
                                      "Accept" => "application/json"
                                      },
                            parameters: {
                                        character: params[:character],
                                        quote: param[:quote],
                                        location: params[:location]
                                         }
                           ).body

    redirect_to "/friends/#{friend["id"]}"
  end

  def show
    @friend =Friend.find(params[:id])
  end

  def edit
    @friend =Friend.find(params[:id])
  end

  def update
    friend = Unirest.patch("#{ ENV["API_HOST"] }/api/v2/friends.json",
                            headers: {
                                      "Accept" => "application/json"
                                      },
                            parameters: {
                                        character: params[:character],
                                        quote: param[:quote],
                                        location: params[:location]
                                         }
                           ).body
    redirect_to "/friends#{friend["id"]}"
  end

  def destroy
   Unirest.delete(
                  "#{ ENV["API_HOST"] }/api/v2/friends.json",
                            headers: {
                                      "Accept" => "application/json"
                                      }).body
    redirect_to "/friends"
  end
end
