# <!--PROJECT NAME HERE-->

This web app tracks projects and the volunteers working on them.

### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Ruby 2.4.1
Bundler

### Installing

Follow these setup steps:

* Clone the repository to your machine.
* Make sure you have postgres installed.
* You will need to start a postgres server. To do so, open a new terminal window and type `$ postgres`.
* Then open another terminal window and type `$ psql`.
* Next you need to create a database. To do so, type `CREATE DATABASE volunteer_tracker;` in the same terminal window.
* Then you will have to create the tables in which our data is going to be stored. To do so, type `CREATE TABLE volunteers (id uuid PRIMARY KEY, name varchar, poroject_id uuid);`.
* We need another table for our projects so type: `CREATE TABLE volunteers (id uuid PRIMARY KEY, name varchar);`.
* Finally you'll need a test database so type `CREATE DATABASE volunteer_tracker_test WITH TEMPLATE volunteer_tracker`.

You can now run `app.rb` in a new terminal window and visit localhost:4567 in the browser to view the app.

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
