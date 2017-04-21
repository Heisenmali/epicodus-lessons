# Anagram or antigram?

#### This app tests if words entered by the user are anagrams, palindromes, or antigrames.

#### By _**{niklaslong}**_

## Description

This app takes user input and tests for different conditions - anagram, palindrome or antigram? IT was built for an Epicodus code review in the ruby course.

## Setup/Installation Requirements

* _Git, text editor, browser are required_
* _Clone from github_
* _Open in text editor_
* _Make sure you run bundle in terminal to install all the gems used for this project_
* _Run ruby anagram.rb in terminal_
* _App will run on localhost:4567_

## Specs

| Spec                                          | Input                          | Output      |
| --------------------------------------------- |:-------------------------------|:------------|
| method checks if two words are anagrams       | tea, eat                       | yes!        |
| method checks if two words are not anagrams   | tea, hello                     | No!         |   
| Same as above without reagrdless of case      | TeA, eat                       | yes!        |
| Same as above and checks for palindromes      | Ana                            | yes!        |
| App displays output on sinatra(integration)   | ana, ana                       | yes! yes!   |
| Check if input is valid contains aieou        | hd                     | Enter a valid input |
| Antigram unit testing                         | hd, no                 | are antigrams!      |
| Eliminates punctuation from input             | hello world!           | Enter a valid input |


## Known Bugs

_none_

## Support and contact details

_contact me@niklaslong.ch if you have any questions_

## Technologies Used

_This app uses Ruby, Sinatra_

### License

*MIT and GPL*

Copyright (c) 2017 **_niklaslong_**
