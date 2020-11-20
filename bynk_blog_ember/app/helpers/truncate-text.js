import Ember from 'ember';

export function truncateText(params, hash) {
  let value = params[0],
      len = hash.limit,
      out = '';

      if (value !== undefined) {
        out = value.substr(0, len-3);

        if (value.length > len) {
          if (out.slice(-1) === ' ') {
            out = out.slice(0, -1);
          }
          out = out.concat('...');
        }

      } else {
        out = '';
      }
      console.log(out.length)
  return out;
}

export default Ember.Helper.helper(truncateText);
