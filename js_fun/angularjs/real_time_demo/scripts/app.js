var app = angular.module('myApp', [
  'ngAnimate', 'ngCookies', 'ngResource', 'ngRoute', 'ngSanitize', 'ngTouch', 'firebase'
]);

app.constant('FIREBASE_URL', 'https://dazzling-fire-5588.firebaseio.com/');

app.config(function($routeProvider) {
  $routeProvider
    .when('/', {
      templateUrl: 'views/posts.html',
      controller: 'PostsCtrl'
    });
});

