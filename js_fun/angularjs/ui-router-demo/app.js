var app = angular.module("uiRouterExample", ["ui.router"]);

app.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', {
        url: '/home',
        templateUrl: 'templates/home.html'
    })
    .state('list', {
        url: '/list',
        templateUrl: 'templates/list.html',
        controller: 'ListCtrl'
    })
    .state('list.item', {
        url: '/:item',
        templateUrl: 'templates/list.item.html',
        controller: function($scope, $stateParams) {
            $scope.item = $stateParams.item;
        }
    });
  $urlRouterProvider.otherwise('/home');
})

app.controller("ListCtrl", function($scope) {
    $scope.shoppingList = [
      {name: 'Milk'},
      {name: 'Eggs'},
      {name: 'Bread'},
      {name: 'Cheese'},
      {name: 'Ham'}
    ];

    $scope.selectItem = function(selectedItem) {
        _($scope.shoppingList).each(function(item) {
            item.selected = false;
            if (selectedItem === item) {
                selectedItem.selected = true;
            }
        });
    };
});
