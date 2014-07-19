import Ember from 'ember';

var Router = Ember.Router.extend({
  location: JerkyENV.locationType
});

Router.map(function() {
  this.route('orders');
});

export default Router;
