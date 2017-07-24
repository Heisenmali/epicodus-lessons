import DS from 'ember-data';

export default DS.Model.extend({
  componentType: DS.attr('string'),
  content: DS.attr('string'),
  post: DS.belongsTo('post', {async: true, inverse: 'components'})
});
