import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    updateAlbum(album) {

      var params = {
        artist: this.get('artist'),
        album: this.get('title'),
        genre: this.get('genre'),
        image: this.get('image'),
        review: this.get('review')
      };
      this.sendAction('update', album, params);
    }
  }
});
