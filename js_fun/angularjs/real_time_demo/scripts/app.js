var app = angular.module('myApp', [
  'ngAnimate', 'ngCookies', 'ngResource', 'ngRoute', 'ngSanitize', 'ngTouch'
]);

app.config(function($routeProvider) {
  $routeProvider
    .when('/', {
      templateUrl: 'views/posts.html',
      controller: 'PostsCtrl'
    });
});
