class Api::V1::FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def create
    @friend = Friend.create(
                            character: params[:character],
                            location: params[:location],
                            quote: params[:quote]
                            )
    render :show
        
  end
  def show
    @friend = Friend.find(params[:id])
    
  end
end
