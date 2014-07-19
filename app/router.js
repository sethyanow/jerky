import Ember from 'ember';

var Router = Ember.Router.extend({
  location: JerkyENV.locationType
});

Router.map(function() {
  this.resource('orders');
});

export default Router;
