import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    sendSaveChanges(comp, newContent) {
      this.send('saveChanges', comp, newContent);
    }
  }
});
