class StreamsController < ApplicationController
  def index
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


  # def show
  # end

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
