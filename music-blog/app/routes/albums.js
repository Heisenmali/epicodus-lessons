import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.findAll('album');
  },
  albumForm: false,
  actions: {
    newAlbum() {
      this.controller.toggleProperty('albumForm');
    },
    addAlbum(params) {
      this.controller.toggleProperty('albumForm');
      var newAlbum = this.store.createRecord('album', params);
      newAlbum.save();
      this.transitionTo('albums');
    }
  }
});
