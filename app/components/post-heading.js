import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    initSaveChanges() {
      let comp = this.get('comp'),
          content = comp.get('content'),
          element = Ember.$(event.target),
          newContent = element[0].innerText;
      this.attrs.saveChanges(comp, newContent);
      Ember.$(window.getSelection().removeAllRanges());
    }
  }
});
