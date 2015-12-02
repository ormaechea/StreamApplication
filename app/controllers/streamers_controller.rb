class StreamersController < ApplicationController
  def index
   #This solution works but the API does not have a profile for live streams that are the most common.
   #@streamer_api_profile = WatchPeopleCodeApi::Stream.new.streamer_profile(params[:username])
   # @user = Streamer.new(username: @streamer_api_profile["data"]["name"], twitch: @streamer_api_profile["data"]["twitch"], youtube: @streamer_api_profile["data"]["youtube"])
   #So this is a workaround
   @user = Streamer.new(username: params[:username], twitch: params[:site], youtube: params[:id])
   #Live Streams ORM
    @live_streams = []
    @live_api_streams = WatchPeopleCodeApi::Stream.new.live_streams
    @live_api_streams["data"].each do |stream|
      #creating the stream object ORM
      @new_live_stream = Stream.new(id: stream["id"], actual_start_time: stream["actual_start_time"], site: stream["site"], title: stream["title"], url:stream["url"], viewers:stream["viewers"], username: stream["user"])
      @live_streams << @new_live_stream
     end
      #Upcoming Streams ORM
    @upcoming_streams = []
    @upcoming_api_streams = WatchPeopleCodeApi::Stream.new.upcoming_streams
    @upcoming_api_streams["data"].each do |stream|
      #creating the stream object ORM
      @new_upcoming_stream = Stream.new(id: stream["id"], actual_start_time: stream["actual_start_time"], site: stream["site"], title: stream["title"], url:stream["url"], viewers:stream["viewers"], username: stream["user"])
      @upcoming_streams << @new_upcoming_stream

    end
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
