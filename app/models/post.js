import DS from 'ember-data';

export default DS.Model.extend({
  author: DS.attr('string'),
  title: DS.attr('string'),
  teaser: DS.attr('string'),
  components: DS.hasMany('component', {async: true, inverse: 'post'})
});
