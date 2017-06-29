import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    deleteComment(comment) {
      this.sendAction('delete', comment);
    }
  }
});
