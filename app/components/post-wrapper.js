import Ember from 'ember';

export default Ember.Component.extend({
  previousKey: "T",
  didRender() {
    this.$().attr('tabindex',0);
    this.$().focus();
  },
  keyDown(event) {
    let key = String.fromCharCode(event.keyCode),
        post = this.post;
    console.log(key);
    
    if (key === "P" && this.previousKey === "À") {
      this.sendAction('newComponent', post, 'post-paragraph');
      this.set('previousKey', key);
    } else if (key === "H" && this.previousKey === "À") {
      this.sendAction('newComponent', post, 'post-heading');
      this.set('previousKey', key);
    } else if (key === "I" && this.previousKey === "À") {
      this.sendAction('newComponent', post, 'post-image');
      this.set('previousKey', key);
    } else {
      this.set('previousKey', key);
    }
  }
});
