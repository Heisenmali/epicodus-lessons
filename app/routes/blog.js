import Ember from 'ember';

const { Route, set } = Ember;

export default Route.extend({

  model() {
    return this.store.createRecord('post', {
      title: 'tutorial blog post', 
      author: 'nkls',
      content: 'this is awesome!'
    });
  },
  setupController(controller, model) {
    set(controller, 'post', model);
  }
});
