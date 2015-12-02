class StreamersController < ApplicationController
  def index
   #This solution works but the API does not have a profile for live streams that are the most common.
   #@streamer_api_profile = WatchPeopleCodeApi::Stream.new.streamer_profile(params[:username])
   # @user = Streamer.new(username: @streamer_api_profile["data"]["name"], twitch: @streamer_api_profile["data"]["twitch"], youtube: @streamer_api_profile["data"]["youtube"])
   #So this is a workaroung
   @user = Streamer.new(username: params[:username], twitch: params[:site], youtube: params[:id])
  end

  # def new
  # end

  # def edit
  # end

  # def create
  # end

  # def update
  # end

  # def destroy
  # end
end
