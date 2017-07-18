import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params) {
    return this.store.findRecord('song', params.song_id)
  },
  actions: {
    deleteSong(songToDelete) {
      songToDelete.destroyRecord().then( response => {
        this.transitionTo('songs');
      })
    },
    updateSong() {
      var controller = this.get('controller'),
          song = controller.get('model');
      song.save();
      controller.send('updateForm');
    }
  }
});
