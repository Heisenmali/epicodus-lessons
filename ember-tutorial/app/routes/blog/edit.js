import Ember from 'ember';

const { Route, set } = Ember;

export default Route.extend({

  setupController(controller, model) {
    set(controller, 'post',  model);
    set(controller, 'editable', true);
  },
  
  actions: {
    goBackToIndex() {
      this.transitionTo('blog.index');
    },
    toggleEdit() {
      this.controller.toggleProperty('editable');
    },
    something() {
      console.log("Woaaaaaah");
    }
  }

});
