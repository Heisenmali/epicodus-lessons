# <!--PROJECT NAME HERE-->

This web app tracks projects and the volunteers working on them.

### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Ruby 2.4.1
Bundler

### Installing

Installation is quick and easy except for the postgress bit, that's more annoying! You can clone this repository to your computer, navigate to the file path in your terminal, and run 'app.rb' by typing 'ruby app.rb'. If you chose to clone the repository, after you run 'app.rb' you will need to copy the localhost path into your web browser. The standard localhost for Sinatra is port 4567.

You will also need to start a postgres server. To do so, open a new terminal window and type `postgres`.
Then open another terminal window and type `psql`. Next you need to create a database. To do so type `CREATE DATABASE volunteer_tracker;`. Then you will have to create the tables in which our data is going to be stored. To do so, type `CREATE TABLE volunteers (id uuid PRIMARY KEY, name varchar, poroject_id uuid);`. We need another table for our projects so type: `CREATE TABLE volunteers (id uuid PRIMARY KEY, name varchar);`. Finally you'll need a test database so type `CREATE DATABASE volunteer_tracker_test WITH TEMPLATE volunteer_tracker`. And we're done!

## Built With

* Ruby
* Sinatra
* SQL
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* ES6
* Jquery https://jquery.com/

## Specifications

| behavior                                           | input                                | output  |
|----------------------------------------------------|:------------------------------------:|:-------:|
| User can add, edit, delete, view projects          | See `project_spec.rb`                | idem    |
| User can add, edit, delete, view volunteers        | See `volunteer_spec.rb`              | id.     |
| Root lists all projects and all volunteers         | See `volunteer_integration_spec.rb`  | id.     |
| Project page lists all projects and info           | See `volunteer_integration_spec.rb`  | id.     |
| Volunteer page lists all projects and info         | See `volunteer_integration_spec.rb`  | id.     |
| Volunteer page lets user edit name of volunteer    | See `volunteer_integration_spec.rb`  | id.     |
| Volunteer page lets user add project for volunteer | See `volunteer_integration_spec.rb`  | id.     |

## Authors

* niklaslong

## License

Copyright © 2017 Niklas Long
