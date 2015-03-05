angular.module('countryDirectives', []).directive('country', function() {
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
