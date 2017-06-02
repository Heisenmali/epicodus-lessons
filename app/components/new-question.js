import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    addQuestion() {
      var params = {
        author: this.get('author'),
        content: this.get('content')
      };
      this.sendAction('newQuestion', params); 
    }
  }

});
