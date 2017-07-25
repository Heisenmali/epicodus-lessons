import Ember from 'ember';

export default Ember.Component.extend({
  didRender() {
    this.$().attr('tabindex',0);
    this.$().focus();
  },
  keyDown(event) {
    let key = String.fromCharCode(event.keyCode),
        post = this.post;
    console.log(key);
    
    if (key === "A") {
      console.log('yeaahhhhh!');
      this.sendAction('newPara', post);
    }
  }
});
