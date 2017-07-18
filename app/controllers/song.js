import Ember from 'ember';

export default Ember.Controller.extend({
  showUpdateForm: false,

  actions: {
    updateForm: function() {
      this.set('showUpdateForm', !this.get('showUpdateForm'))
    }
  }
});
