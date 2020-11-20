import Ember from 'ember';

export default Ember.Component.extend({
  hideShow: "hideMe",
  showHide: "showMe",
  actions: {
    imageLoaded() {
      this.set('hideShow', 'showMe');
      this.set('showHide', 'hideMe');
    }
  }
});
