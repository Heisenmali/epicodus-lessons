import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    addComment(){
      console.log("made it");
      var params = {
        author: this.get('author'),
        content: this.get('content'),
        rating: this.get('rating'),
        album: this.get('model')
      };
      console.log(params);
      this.sendAction('addComment', params);
    }
  }
});
