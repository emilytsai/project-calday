# Cal Day Scheduler

### Title: Cal Day Scheduler Project
### Team Members: Caroline Kim, Emily Pedersen, Alexander Ros, Emily Tsai
### Demo Link: https://www.youtube.com/watch?v=6ElQNRWOc7k&feature=youtu.be 
### Heroku Link: https://caldayscheduler.herokuapp.com/


## Idea:
The Cal Day Scheduler is a website where students can create personalized schedules for Cal Day events. Students can create an account, see their profile information, list of scheduled events, and view which events they selected to attend. Organizations can also sign up for Cal Day and create their events for the students to view and attend. Leaders can sign up and view all the scheduled events so that they can stay on top of knowing when and where everything is for Cal Day.

## Models and Description:
#### Student
* Students can sign up with their name, email, password, etc.
* Students can edit their name, year, major, student ID, email, and password after logging in/signing up

#### Organization
* Organizations can sign up by providing their organization name, email, password, etc.
* Organizations can edit their category, description, email, and password after logging in/signing up
* Organizations can view their own events and create new events by providing an event title, description, and location

#### Leader
* Leaders can sign up by providing their organization name, email, password, etc.
* Leaders can edit their name, year, major, student ID, email, and password after logging in/signing up

#### Event
* Events belong organizations and have titles, descriptions, and locations

#### Schedule
* Serves as a middle ground connecting events and students (has_many, through, belongs_to)

## Features:
* The homepage invites users to sign up or log in; students, leaders, and organizations can select what category they belong to and sign up using their name, email, and password, and other attributes.
    * When certain required fields are not entered (like the email address or the password), an error occurs (and the user cannot sign up)
    * Users that have already signed up can log in
* The user homepage has a list of all the events for the user to view and the map of locations of events
* Users can edit their personal information (such as name, major, year, and ID, etc.) from their profile page
* Organizations can create events and view their events’ information
* Each event has a geolocation and a map displaying where it is on campus
* Students can save events to their personal schedule and view their saved schedule

## Division of Labor:
* Emily P:
    * Worked on the views for the Homepage to show the Google map of the locations of events on campus
    * Helped work on Student, Leader, and Organization controllers
    * Found and set up the Gmaps4rails and Underscore-Rails gems
    * Helped create the seed file for the database
* Emily T:
    * Helped set up the models, views, and controllers
    * Set up Devise gem & additional sign up/log in/edit profile features in the Registration(s) controllers
    * Added ‘My Events’ features to Student (saving and showing events from homepage to schedule) and to Organization (creating events that show up on homepage and events page)
    * Used Gon gem to implement ability for Event locations (longitude/latitude) to show up on the map
    * Implemented front-end features like the navigation bar and the page layouts using Bootstrap
* Caroline:
    * Contributed to the Student, Leader and Organization controllers
    * Helped working on the Gmaps4rails gem and studied the qualities of the gem
    * Attempted to set up create methods for the controllers (that we later replaced with Devise)
    * Helped create the seed file for the database
* Alexander:
    * Helped work on Student, Leader, and Organization controllers and the application views
    * Created the show profile pages for showing information and editing profiles in the views and controllers
