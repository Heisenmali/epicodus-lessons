# README

## Configuration
  * uses Ruby 2.4.1, Rails 5.1.2
  * tachyons css framework for styling
  * uses Rails admin gem for the admin dashboard

## Setup
  * run `bundle install` to download all gems used for this project.
  * Once this is done, you can create the database.

## Database creation
  * start postgres by running `postgres` in terminal.
  * run `rake db:create`, `rake db:migrate` to create the dev database.
  * run `rake db:test:prepare`, to create the test database.

## Database initialization
  * to seed the images, make sure you change the path in the `image` property on this line, to wherever the project directory is stored: 
  
  ```ruby
  # /db/seeds.rb
  product = Product.create(name: Faker::Space.unique.star_cluster, 
                           description: Faker::Hipster.paragraph(3), 
                           price: Faker::Number.decimal(2), 
                           image: File.open(ENV['HOME'] + "/desktop/music_store/public/seed_images/#{i}.jpg"))
  ``` 
  
  * Here the project directory is on the desktop. Thie line of code can be found in `/db/seeds.rb` file 

  * to seed the database run `rake db:seed`. This will generate 20 products, and a random number (between 1 and 10) of reviews per product and store them in the database.

## Accounts 
  * An admin account is automatically seeded. The email is `admin@test` and the password is `admin_test`

## Rspec
  * run `rspec` to run the tests.

## Licence
  _MIT, project by niklaslong_