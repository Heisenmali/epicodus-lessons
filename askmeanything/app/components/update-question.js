import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    updateQuestion(question) {
      var params = {
        author: this.get('author'),
        question: this.get('ask'),
        content: this.get('content')
      };
      this.sendAction('updateQuestion', question, params);
    }
  }
});
