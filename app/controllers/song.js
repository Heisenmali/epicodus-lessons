import Ember from 'ember';

export default Ember.Controller.extend({
  showForm: false,

  actions: {
    updateSong: function() {
      this.set('showForm', !this.get('showForm'))
    }
  }
});
