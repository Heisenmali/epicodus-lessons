import Ember from 'ember';

export default Ember.Controller.extend({
  showUpdateForm: false,
  // reviews: this.model.get('reviews'),
  actions: {
    updateForm: function() {
      this.set('showUpdateForm', !this.get('showUpdateForm'))
    }
  }
});
