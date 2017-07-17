import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.findAll('song');
  },
  actions: {
    createSong: function() {
      var route = this,
          controller = this.get('controller');

      var song = this.store.createRecord('song', controller.getProperties('artist', 'title'))
      console.log(controller.getProperties('artist'));
      song.save().then(function() {
        controller.set('artist', '');
        controller.set('title', '');
      });
    }
  }
});
