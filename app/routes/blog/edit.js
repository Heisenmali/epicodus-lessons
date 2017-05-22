import Ember from 'ember';

const { Route, set } = Ember;

export default Ember.Route.extend({
  actions: {
    goBackToIndex() {
      this.transitionTo('blog.index');
    }
  },

  setupController(controller, model) {
    set(controller, 'post',  model);
  }
});
