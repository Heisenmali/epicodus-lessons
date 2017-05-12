# <!--Shoe-store-->

This web app tracks projects and the volunteers working on them.

### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Ruby 2.4.1
Bundler

### Installing

Follow these setup steps:

* Clone the repository to your machine.
* Don't forget to run `$ bundle`
* Make sure you have postgres installed.
* Go into the project directory using `$ cd shoe-store`.
* You will need to start a postgres server. To do so, open a new terminal tabpsql and type `$ postgres`.
* Open a new terminal tab and type `$ rake db:create` followed by `$ rake db:migrate`.

You can now run `$ ruby app.rb` in a new terminal window and visit localhost:4567 in the browser to view the app.

## Built With

* Ruby
* Sinatra
* SQL
* HTML
* CSS
* Tachyons http://tachyons.io/
* Bootstrap https://getbootstrap.com/
* ES6
* Jquery https://jquery.com/

## Specifications

<!--| behavior                                           | input                                | output  |
|----------------------------------------------------|:------------------------------------:|:-------:|
| User can add, edit, delete, view projects          | See `project_spec.rb`                | idem    |
| User can add, edit, delete, view volunteers        | See `volunteer_spec.rb`              | id.     |
| Root lists all projects and all volunteers         | See `volunteer_integration_spec.rb`  | id.     |
| Project page lists all projects and info           | See `volunteer_integration_spec.rb`  | id.     |
| Volunteer page lists all projects and info         | See `volunteer_integration_spec.rb`  | id.     |
| Volunteer page lets user edit name of volunteer    | See `volunteer_integration_spec.rb`  | id.     |
| Volunteer page lets user add project for volunteer | See `volunteer_integration_spec.rb`  | id.     |-->

## Authors

* niklaslong

## License

Copyright © 2017 Niklas Long