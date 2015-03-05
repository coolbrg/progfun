angular.module('countryFactories', []).factory('countries', function($http){
  return {
    list: function(callback) {
      $http({
        method: 'GET',
        url: '../countries1.json',
        cache: true
      }).success(callback);
    },
    find: function(id, callback){
      $http({
        method: 'GET',
        url: '../country_' + id + '.json',
        cache: true
      }).success(callback);
    }
  }
});
