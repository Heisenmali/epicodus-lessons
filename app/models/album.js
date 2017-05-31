import DS from 'ember-data';

export default DS.Model.extend({
  artist: DS.attr(),
  album: DS.attr(),
  genre: DS.attr(),
  image: DS.attr()
});
