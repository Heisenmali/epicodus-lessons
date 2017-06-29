import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    delete(announcement) {
      if (confirm('Are you sure you want to delete the announcment')) {
        this.sendAction('destroyAnnouncement', announcement);
      }
    }
  }
});
