import Ember from 'ember';

export default Ember.Route.extend({
  setupController(controller, model) {
    Ember.set(controller, 'album', model);
  },
  model(params) {
    return this.store.findRecord('album', params.album_id);
  },
  action: {
    updateAlbum(album, params) {
      debugger;
      Object.keys(params).forEach(function(key) {
        if(params[key]!==undefined) {
          album.set(key,params[key]);
        }
      });
      album.save();
    }
  }
});
