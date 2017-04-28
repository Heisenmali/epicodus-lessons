# <!--PROJECT NAME HERE-->

<!--PROJECT DESCRIPTION HERE-->

### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Ruby <!--VERSION HERE-->
Bundler

### Installing

Installation is quick and easy! First you can open this link <!--HEROKU LINK HERE--> to see the webpage in action live online. Or you can clone this repository to your machine, navigate to the file path in your terminal, and run 'app.rb' by typing '$ruby app.rb'. If you chose to clone the repository, after you run 'app.rb' you will need to copy the localhost path into your web browswer. The standard localhost for Sinatra is port 4567

## Built With

* Ruby
* Sinatra
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* ES6
* Jquery https://jquery.com/

## Specifications

### Unit testing

| behavior |  input   |  output  |
|----------|:--------:|:--------:|
| Create instance of Word containg instance of Definition | `Word.new("word", "definition"` |"definition               |
| Create "database" using array set to class variable     | `Word.new("word", "definition")`|`[word, word]`            |
| Add support for multiple definitions for one word       | `word.new_definition`           |`[definition, definition]`|

### Integration testing

| behavior |  input   |  output  |
|----------|:--------:|:--------:|
| Add word page accessible from homepage and shows form       | `visit '/new-word'`      | page has new word form    |
| Form submits and adds new instance of Word to array         | `visit '/new-word/add'`  | page displays success     |
| Homepage lists words currently stored                       | `visit '/'`              | page has a list of words  |
| Word page accessible from hompegage, lists word definitions | `visit '/:word'`         | page shows definitions    |
| Add definition page accessible from word page               | `visit '/:word/new-def'` | page has new def form     |

 
## Authors

* <!--YOUR NAME HERE-->

## License

Copyright © 2017 <!--YOUR NAME HERE-->
