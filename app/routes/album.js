import Ember from 'ember';

export default Ember.Route.extend({
  // setupController(controller, model) {
  //   Ember.set(controller, 'album', model);
  // },
  model(params) {
    return this.store.findRecord('album', params.album_id);
  },
  actions: {
    update(album, params) {
      Object.keys(params).forEach(function(key) {
        if(params[key]!==undefined) {
          album.set(key,params[key]);
        }
      });
      album.save();
    },
    albumDelete(album) {
      album.destroyRecord();
      this.transitionTo('albums');
    },
    addComment(params){
      var newComment = this.store.createRecord('comment', params);
      var album = params.album;
      album.get('comments').addObject(newComment);
      newComment.save().then(function() {
        return album.save();
      });
    }
  }
});
