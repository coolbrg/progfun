var app = angular.module('myApp', ['ngAnimate', 'ui.router']);

// service
app.factory('subscribersSvc', ['$log', '$q', '$timeout',
  function serviceFn($log, $q, $timeout) {
  var subscribers = [
    { id: 1, name: 'John Doe', level: 'pro', photoUrl: 'http://thumb1.shutterstock.com/display_pic_with_logo/239818/141181054/stock-photo-handsome-young-man-portrait-141181054.jpg' },
    { id: 2, name: 'Jane Doe', level: 'business', photoUrl: 'http://thumb7.shutterstock.com/display_pic_with_logo/1072085/161378441/stock-photo-coquette-beauty-portrait-of-a-young-brunette-woman-biting-her-lips-161378441.jpg' }
  ];

  var service = {
    list: list,
    find: find
  }

  return service;

  function list() {
    var dfd = $q.defer();

    $timeout(function() {
      dfd.resolve(subscribers.slice());
    })

    return dfd.promise;
  }

  function find(id) {
    var dfd = $q.defer();

    $timeout(function() {
      var match = _.find(subscribers, function(s) { return s.id === id; });
      dfd.resolve(match);
    })

    return dfd.promise;
  }

  function jsonClone(o) {
    return JSON.parse(JSON.stringify(o));
  }
}]);

app.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('app', {
      url: '/',
      views: {
       'header': {
          templateUrl: 'templates/header.html'
       },
       'content' : {
          templateUrl: 'templates/content.html'
       },
       'footer' : {
          templateUrl: 'templates/footer.html'
       }
      }
    })
    .state('app.dashboard', {
      url: 'dashboard',
      views: {
        'content@': {
          templateUrl: 'templates/dashboard.html',
          controller: 'dashboardCtrl',
          controllerAs: 'vm'
        }
      }
    })
    .state('app.campaigns', {
      url: 'campaigns',
      views: {
        'content@': {
          templateUrl: 'templates/campaigns.html',
          controller: 'campaignsCtrl',
          controllerAs: 'vm'
        }
      }
    })
    .state('app.subscribers', {
      url: 'subscribers',
      views: {
        'content@' : {
          templateUrl: 'templates/subscribers.html',
          controller: 'subscribersCtrl',
          controllerAs: 'vm'
        }
      }
    })
    .state('app.subscribers.detail', {
      url: '/{id:int}',
      views: {
        'detail@app.subscribers' : {
          templateUrl: 'templates/subscriber-detail.html',
          controller: 'subscriberDetailCtrl',
          controllerAs: 'vm'
        }
      }
    });

  $urlRouterProvider.otherwise('/');
});

app.controller('dashboardCtrl', ['$log', function($log) {
  var self = this;
  console.log('inside dashboard ctrl');
}]);
app.controller('campaignsCtrl', ['$log', function($log) {
  var self = this;
  console.log('inside campaignsCtrl');
}]);
app.controller('subscribersCtrl', ['$log', 'subscribersSvc',
  function($log, subscribersSvc) {
  console.log('inside subscribersCtrl');
  var self = this;

  activate();

  function activate() {
    subscribersSvc.list().then(bindData);
  }

  function bindData(data) {
    self.subscribers = data;
  }
}]);
app.controller('subscriberDetailCtrl', ['$log', '$stateParams', 'subscribersSvc',
  function($log, $stateParams, subscribersSvc) {
  console.log('inside subscriberDetailCtrl');

  var self = this;

  activate();

  function activate() {
    subscribersSvc.find($stateParams.id).then(bindData);
  }

  function bindData(data) {
    self.subscriber = data;
  }
}]);
