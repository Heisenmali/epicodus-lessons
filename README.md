# Club

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 1.1.2.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `-prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).
Before running the tests make sure you are serving the app via `ng serve`.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).

## Setup

run `npm install`
run `bower install`
add your apiKey (see below)

## Adding your API Key

In order to use the app correctly, you need to aqcuire your own api-key from firebase. To do this, create an account with firebase, create a new database and use the seed.json file in this project to seed your database. Set the rules for read and write to 'true'. Click on 'overview' and then 'add your database to your web app' to get your api-key.

Then create an api-keys.ts file in the app directory and include your newly acquired api-key as an exported variable named masterFirebaseConfig. (`export var masterFirebaseConfig{insert api key in here}`).

## Planning

1. Configuration/dependencies
  * Angular-cli
  * Npm
  * Bower


2. User stories

  
  * As a user, I'd like to visit a page to see a list of all team or club members. 
  * As a user, I'd like to click a team or club member's entry in the list to visit their profile page, which should include more details about them.
  * As a user, I'd like the option to visit an "About" page that explains what the club is, and what they do.
  * As a user, I'd like all data persisted in a database, so it's always there when I need it.
  * As a user, I'd like to filter the list of users by their particular role in the group, or some other information/category. (For instance, a club may have a treasurer, president, and/or secretary. A sports team may have a goalie, forward, or striker, a book club may have founders and attendees. You're also welcome to filter by something other than role, if it's more relevant to your project.)
  * As an administrator, I want to add new users to the club. (User authentication is not required).
  * As an administrator, I want to edit user profiles, in case I make a mistake, or need to update their details.
  * As an administrator, need the option to delete a user, in case they leave the club or team.



3. Integration
  * Initial routes and index page with all dependencies
  * Component for viewing: list-users
  * Component for editing: edit-user
  * Component for adding: new-user
  * Component for navbar: nav
  
4. UX/UI
  * Develop custom style

5. Polish
  * Refactor code
  * Delete unused files/code
  * Make README awesome


## Comments

  * Form validation can be greatly improved by adding server side validation. 
  * About page content could be stored in firebase. 
