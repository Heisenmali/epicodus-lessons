import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    addAnswer(question) {
      var params = {
        author: this.get('creator'),
        content: this.get('answer'),
        question: this.get('model')  
      };
      this.sendAction('newAnswer', params);
    }
  }
});
