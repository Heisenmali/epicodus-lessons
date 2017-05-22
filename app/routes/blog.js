import Ember from 'ember';

const { Route } = Ember;

export default Route.extend({

  model() {
    return this.store.createRecord('post', {
      title: 'tutorial blog post', 
      author: 'nkls',
      content: 'this is awesome!'
    });
  }
});
