# Vinyl Lover
## Description
A full stack application that allows customers make a list of records they own and want through manual input or pulling data from the [Discogs API] (https://www.discogs.com/developers/#page:home,header:home-quickstart).

## how to use locally
* clone this repo
* run bundle install
* got to discog and in settings for you as a user generate a token or consumer key
* bundle exec figaro install in terminal
* That commands creates a application.yml in the config folder - put the key or token here
* in terminal put rails s to start your server
* go to localhost:3000 in browser

## Technologies Used
* HTML5 erb
* Bootstrap
* CSS3
* Ruby On Rails
* [Heroku] (https://vast-dawn-55767.herokuapp.com/)
* Git
* [GitHub] (https://github.com/seanberrie/Vinyl_Lover)
* [Trello] (https://trello.com/b/mjBYmPVl/vinyl-lover) 
## Wireframes
[link to wireframes on balsamiq] (https://balsamiq.cloud/sf55nv/p5snykp)
### Landing Page
![landing page](https://i.imgur.com/oRDqyWl.png)

### Sign Up
![Sign Up](https://i.imgur.com/m2LQFes.png)

### My Records
![my records](https://i.imgur.com/ZUocNgv.png)

### Add Record
![Add Record](https://i.imgur.com/QTKU0s9.png)

### Edit Account
![edit account](https://i.imgur.com/6zfCmWZ.png)

### Edit Record
![edit record](https://i.imgur.com/ohmKT8Z.png)

### ERD
![ERD](https://i.imgur.com/vr5sHmE.png)


### Features

* Search feature from API
  ![signup code snippet](https://i.imgur.com/OdRcpdi.png)
* view 2 list one that has the value of owned and one of want from 1 model
 ![2 views one model](https://i.imgur.com/khBmVJR.png)

### Credits

 * Sean Berrie


### Designed and Developed by

 * Sean Berrie [github link](https://github.com/seanberrie "My Github link")

### Links
 * [Heroku Live Website] (https://intelligentsia.herokuapp.com/)

### Challenges
* Using an outdated gem wrapper for the Dischog API
* Functioning of using search bar to add albums from API
* Full CRUD being used in different locations
* using figaro gem instead of .ENV file to hide token key

### I'm Winning 
* I was able to get the gem wrapper updated enough to current rails language to work
* Was able to change over the data keys to match the schema of my model from the API's model
* Having a better understanding of Database management and control

### Challenges I want to still complete
* I needed more time to style fully and will be continuing that process over the next week
* Although search is working its working in an unintended manner and want to get it to flow cleaner
* Discogs API has a few other parameters i wanted to be able to reach including current price and links to play digital versions of tracks of album
