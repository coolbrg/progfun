(function() {
  'use strict'

  angular.module('flickrApp', ['ngMaterial'])
    .controller('ListCtrl', ['$scope', '$http', function($scope, $http){
      $scope.isSearching = false;
      $scope.results = [];

      $scope.search = function() {
        $scope.isSearching = true;
        $http({
          method: 'GET',
          url: 'https://api.flickr.com/services/rest',
          params: {
            method: 'flickr.photos.search',
            api_key: '71f12130739a82ac085a2e2bfc500cfe',
            text: $scope.searchTerm,
            format: 'json',
            nojsoncallback: 1
          }
        }).success(function(data) {
          $scope.results =  data;
        }).error(function(error) {
          console.error(error);
        })
      }
    }])

})();
