import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    addAlbum() {
      // this.controller.toggleProperty('albumForm');
      console.log(this.albumForm);
      var params = {
          artist: this.get('artist') ? this.get('artist') : "",
          album: this.get('album') ? this.get('album') : "",
          genre: this.get('genre') ? this.get('genre') : "",
          image: this.get('image') ? this.get('image') : "",
          review: ""
        };
        console.log("params: " + params);

        this.sendAction('addAlbum', params);
    }
  }
});
