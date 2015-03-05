var countryApp = angular.module('countryApp', ['ngRoute', 'countryControllers']);

countryApp.config(function($routeProvider) {
  $routeProvider.
    when('/', {
      templateUrl: '../templates/country-list.html',
      controller: 'CountryListCtrl'
    }).
    when('/:countryId', {
      templateUrl: '../templates/country-detail.html',
      controller: 'CountryDetailCtrl'
    }).
    otherwise({
      redirecTo: '/'
    });
});

// factory
countryApp.factory('countries', function($http){
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

// Directive
countryApp.directive('country', function() {
  return {
    scope: {
      country: '='
    },
    restrict: 'A',
    templateUrl: '../templates/country.html',
    controller: function($scope, countries) {
      // Note: $scope is now scope of country directive
      // $scope.country is available through listing in ng-repeat in country-list.html
      // console.log($scope.country)
      countries.find($scope.country.id, function(country) {
        $scope.flagURL = country.flagURL;
      });
    }
  }
});
