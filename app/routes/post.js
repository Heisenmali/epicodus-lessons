import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.findRecord('post', params.post_id, { include: 'components' });
  },
  actions: {
    saveChanges(comp, newContent) {
      comp.set('content', newContent);
      comp.save();
    },
    newPara(post) {
      console.log(post);
      let comment = this.store.createRecord('component', {
        post: post,
        content: 'helloWorld, this is a new component',
        componentType: 'post-paragraph'
      });
      comment.save();
    }
  }
});
