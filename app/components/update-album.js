import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    updateAlbum(album) {
      var params = {
        artist: this.get('artist') ? this.get('artist') : "",
        album: this.get('album') ? this.get('album') : "",
        genre: this.get('genre') ? this.get('genre') : "",
        image: this.get('image') ? this.get('image') : "",
        review: ""
      };
      this.sendAction('updateAlbum', album, params);
    }
  }
});
