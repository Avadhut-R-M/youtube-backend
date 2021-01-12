# Group 4 - Capstone-Project

## Source Project

### Youtube clone
   
   [youtubeclone-frontend](https://github.com/manikandanraji/youtubeclone-frontend)

   [youtubeclone-backend](https://github.com/manikandanraji/youtubeclone-backend)

### Source Tech Stack

PERN stack
   * Database: Postgres
   * Backend: NodeJS
   * Rest Framework: ExpressJS + Sequelize
   * Frontend: REACT + REDUX

### Project Tech Stack

   * Frontend: REACT + REDUX
   * Backend: Django
   * Rest Framework: Django Rest Framework
   * Database: Postgres

## User Stories

* Create a new account by going to the Signup page
* Existing users can login using their credentials
* Home page: Contains all the videos with the latest videos at the top
* Trending: Videos that are most trending(most viewed) show up at the top here
* Subscriptions: If you have not subscribed to any channels, you get a list of recommendations for channels, else you get the videos of your subscribed channels
* Liked videos: If you liked any videos, they show up here
* History: Just the videos you watched
* Library: Collection of history and liked videos
* Profile: Contains 4 sections
    * Videos: All the videos that you uploaded
    * Channels: Contains the channels you have subscribed to
    * About: Your description of your channel
    * Edit profile: Change your description, user details and add cover pic and profile pic. If you are not the owner of the profile, this changes to subscribe or unsubscribe. 
* Upload video: Upload your own videos so that others can enjoy it
* Logout

## API's 

Get:

* /auth/me
* /videos
* /videos/search
* /videos/UUID
* /videos/UUID/view
* /videos/UUID/like
* /videos/UUID/dislike
* /users
* /users/search
* /users/feed
* /users/history
* /users/likedvideos
* /users/UUID
* /users/UUID/togglesubscribe
* cloudinary


POST:

* /auth/login
* /auth/signup
* cloudinary
* /videos
* /videos/UUID/comment

PUT:

* /users

## Model diagram

![model diagram](/extras/modeldiagram.png)

