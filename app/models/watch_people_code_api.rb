module WatchPeopleCodeApi

  class Stream
  include HTTParty
        base_uri "http://www.watchpeoplecode.com"
    def live_streams
      self.class.get("/api/v1/streams/live")
    end

    def upcoming_streams
      self.class.get("/api/v1/streams/upcoming")
    end

    def streamers
      self.class.get("/api/v1/streamers")
    end

    def streamer_profile(name)
      self.class.get("/api/v1/streamers/#{name}")
    end

    def streamer_upcoming_stream(name)
      self.class.get("/api/v1/streamers/#{name}/upcoming")
    end

    def streamers_live_stream(name)
      self.class.get("/api/v1/streamers/#{name}/live")
    end


  end

end