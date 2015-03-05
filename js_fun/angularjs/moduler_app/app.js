var countryApp = angular.module('countryApp', [
  'ngRoute', 'countryControllers', 'countryFactories', 'countryDirectives'
]);

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
