# README

## Ruby version and dependencies
  * `ruby -v 2.4.`
  * `rails 5.1.2`

  * run `bundle` to install all the dependencies

## Database
  * run `$ rake db:setup` to create the database and run the seed file.

## Testing and dev environment
  * run `$ rspec` to run all tests
  * run `rails s` to run the application

---

## Endpoints for the API

### GET

#### All parks
  
  `GET http://localhost:3000/parks` will return all the parks paginated. It will return 5 parks per page.
  
   To access the 2nd page, add a key value pair - key: page, value: 2 to the request params: `GET http://localhost:3002/parks?page=2`

  Note: if the name params are empty or are not included, the request will return the first page of the parks.

#### A park by id

  `GET http://localhost:3000/parks/1` will fetch a park by it's id. Here we are searching for the park with the id of 1.

#### A random park

  `GET http://localhost:3000/random` will fetch a random park. No params are needed.

#### Search a park by name 

  `GET http://localhost:3000/search?name=somename` will search the database for the park named somename.

  If you don't provide a name parameter __or__ there are no results matching your the name you searched the endpoint will respond with a message stating that there were no results for your search.


### POST

  `POST http://localhost:3000/parks?name=somenewname` will create a new park.

  The params must be present and must containe the following key-value pair: 

  key: name, value: somenewname

  If the name value is left blank or not even included, the endpoint will return a 422 error stating that the name can't be blank.

### PUT

`PUT http://localhost:3000/parks/1?name=hello` will update the first park's name to hello.

If you don't specify the name parameter, the park's name will not be updated. You will recieve a kind message reminding you to specify a name parameter.

If you specify a name parameter, the park will be updated and you will recieve a success message.

### DELETE

  `DELETE http://localhost:3000/parks/1` will delete the park with an id of 1. No params are required.

  If you try to delete a park that doesn't exist, you will recieve an error message.



  




