# PlayOn Interview Challenge

## Learning Competencies
- Consume watchPeopleCodeApi
- Implement Object Oriented Design.
- Good usage of git.
- Bonus points for styling.

## The challenge

The app will have 2 pages, home page and streamer profile. The home page will have 2 sections Live Streams and Upcoming Streams. The streamer profile page can be accessed by clicking on the name of a streamer name in any of the list.

### Home Page:
- Show a list of Live Streams
- Video Player
- Stream Title
- Streamer Name (Link to profile)
- Show a list of Upcoming Streams
- Stream Title
- Streamer Name (Link to profile)
- Stream Schedule Start Time

### Streamer Profile:
- Streamer Name
- Streamer Twitch.TV profile
- Streamer Youtube profile
- List of Live Streams
- List of Upcoming Streams

## Setup

1. Download Zip or do git clone in CLI
2. cd into the app and open it.
3. Run in CLI -> bundle install to make sure all gems and dependencies are installed
4. Run in CLI -> bin/rake db:create
5. Run in CLI -> bin/rake db:migrate
6. Run in CLI -> bin/rails s
7. Go to http://localhost:3000/streams on your browser for the Home page.
8. You are good to GO!


## Summary

This challenge was completed in 3/4 hours. It was quite an experience. Listed below are things I enjoyed.
- Figuring out edge cases.
- Working the flow of the App.
- Challenging myself with time intervals.
- Implementing hacks and having a functional MVP.
- Overall experience.
- Commiting often.

Here are some things I would like to improve in my implementation:
- Add styling and CSS to the application.
- Add tests and TDD.
- Make my code more DRY.


##Considerations

When working with an API, an important first step figuring out exactly what
the API provides. Often, APIs will provide less functionality than assumed or
will require more configuration than initially expected. Before I started
today's challenge, the first thing I did was trying to interact with the API.

There are very few who schedule an upcoming stream. So for most of the time it will be empty.

Some problems encountered when making a request for streamers that are Live Streams at the moment.
Inline-style:
![Server Error](https://github.com/ormaechea/StreamApplication/blob/master/app/assets/images/example-api-problem.png "mikedoescode was streaming live at the moment")



Another problem encountered was that a lot of users do not set their username so I had to obtain it from their Twitch profile assuming they would have the same username as in their Twitch profile or they signed up with Twitch.
![Null Endpoints](https://github.com/ormaechea/StreamApplication/blob/master/app/assets/images/null-endpoints.png "user value is set to null")

