class StreamersController < ApplicationController
  def index
   @streamer_api_profile = WatchPeopleCodeApi::Stream.new.streamer_profile(params[:username])
   @user = Streamer.new(username: @streamer_api_profile['data']['name'])
   # @user = Streamer.new(username: @streamer_api_profile["data"]["name"], twitch: @streamer_api_profile["data"]["twitch"], youtube: @streamer_api_profile["data"]["youtube"])
  end


  def show
    puts "----------------------------------------"
    puts params
    puts "----------------------------------------"
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
