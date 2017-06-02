# askme

This app serves as a question and answer message board. Users can submit a questions to which other users can respond with answers. 

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Node.js](https://nodejs.org/) (with NPM)
* [Ember CLI](https://ember-cli.com/)
* [PhantomJS](http://phantomjs.org/)

## Installation

* `git clone <repository-url>` this repository
* `cd askme`
* `npm install`

## Running / Development

* `ember serve`
* Visit your app at [http://localhost:4200](http://localhost:4200).

### Code Generators

Make use of the many generators for code, try `ember help generate` for more details

### Running Tests

* `ember test`
* `ember test --server`

### Building

* `ember build` (development)
* `ember build --environment production` (production)

## Further Reading / Useful Links

* [ember.js](http://emberjs.com/)
* [ember-cli](https://ember-cli.com/)
* Development Browser Extensions
  * [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
  * [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)

## Planning

1. Configuration/dependencies
  * emberfire (firebase)

2. Specs
  * Spec 1: All questions are displayed on questions page.
  * Spec 2: Each question has a dedicated page.
  * Spec 3: Each question has answers. 

3. Integration
  * Initial routes or index pages with all dependencies in Controller/index.html head
  * Template/html page for questions
  * Template/html page for each question
  * Template/html page for answer component

4. UX/UI
  * Include and modify Tachyons
  * Develop custom style

5. Polish
  * Refactor if necessary
  * Clean up code and project directory
  * Make README awesome
