/* globals Firebase */
import DS from "ember-data";

export default DS.FirebaseAdapter.extend({
  firebase: new Firebase('https://glowing-fire-2937.firebaseio.com/orders')
});