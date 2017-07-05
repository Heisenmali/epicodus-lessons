# README

## Configuration
  * uses Ruby 2.4.1, Rails 5.1.2
  * tachions css framework for styling

## Setup
  * run `bundle install` to download all gems used for this project.
  * Once this is done, you can create the database.

## Database creation
  * start postgres by running `postgres` in terminal.
  * run `rake db:create`, `rake db:migrate` to create the dev database.
  * run `rake db:test:prepare`, to create the test database.

## Database initialization
  * to seed the database run `rake db:seed`. This will generate 20 products, and a random number (between 1 and 10) of reviews per product and store them in the database.

## Rspec
  * run `rspec` to run the tests.
  * the integration testing for the delete#product controller action is currently not working (rails confirm dialog makes use of js, capybara isn't happy – solution in progress.) 

## Licence
  _MIT, project by niklaslong_