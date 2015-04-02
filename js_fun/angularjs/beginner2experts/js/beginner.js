var app = angular.module('myApp', []);
var apiKey = 'MDE4NDgwNjA4MDE0MjU4ODI4NzJiYjA2Ng001',
    nprUrl = 'http://api.npr.org/query?id=61&fields=relatedLink,title,byline,text,audio,image,pullQuote,all&output=JSON';

// services
app.factory('audio', ['$document', function(audo){
  return document.createElement('audio');
}]);

app.factory('player', ['audio', '$rootScope', function(audio, $rootScope) {
  var player = {
    playing: false,
    current: null,
    ready: false,

    play: function(program) {
      if (player.playing) player.stop();
      var url = program.audio[0].format.mp4.$text;
      player.current = program;
      audio.src = url;
      audio.play();
      player.playing = true;
    },

    stop: function() {
      if (player.playing) {
        audio.pause(); // stop playback
        // Clear the state of the player
        player.ready = player.playing = false;
        player.current = null;
      }
    },

    currentTime: function() {
      return audio.currentTime;
    },

    currentDuration: function() {
      return parseInt(audio.duration);
    }
  };

  audio.addEventListener('ended', function() {
    $rootScope.$apply(player.stop());
  });

  audio.addEventListener('timeupdate', function(evt) {
    $rootScope.$apply(function() {
      player.progress = player.currentTime();
      player.progress_percent = player.progress / player.currentDuration();
    });
  });

  audio.addEventListener('canplay', function(evt) {
    $rootScope.$apply(function() {
      player.ready = true;
    });
  });
  return player;
}]);

app.factory('nprService', ['$http', function($http) {
  var doRequest = function(apiKey) {
    return $http({
      method: 'JSONP',
      url: nprUrl + '&apiKey=' + apiKey + '&callback=JSON_CALLBACK'
    });
  }

  return {
    programs: function(apiKey) { return doRequest(apiKey); }
  };
}]);

app.controller('PlayerCtrl', ['$scope', 'player', 'nprService', function($scope, player, nprService) {
  $scope.player = player;
  nprService.programs(apiKey)
            .success(function(data, status) {
              $scope.programs = data.list.story;
            });
}]);

// custom directive
app.directive('nprLink', function() {
  return {
    restrict: 'AE',
    require: '^ngModel',
    replace: true,
    scope: {
      ngModel: '=',
      player: '='
    },
    templateUrl: '/views/nprListItem.html',
    link: function(scope, ele, attr) {
      scope.duration = scope.ngModel.audio[0].duration.$text;
    }
  };
});

app.directive('playerView', [function(){
  return {
    restrict: 'EA',
    require: ['^ngModel'],
    scope: {
      ngModel: '='
    },
    templateUrl: 'views/playerView.html',
    link: function(scope, iElm, iAttrs, controller) {
      scope.$watch('ngModel.current', function(newVal) {
        if (newVal) {
          scope.playing = true;
          scope.title = scope.ngModel.current.title.$text;
          scope.$watch('ngModel.ready', function(newVal) {
            if (newVal) {
              scope.duration = scope.ngModel.currentDuration();
            }
          });

          scope.$watch('ngModel.progress', function(newVal) {
            scope.secondsProgress = scope.ngModel.progress;
            scope.percentComplete = scope.ngModel.progress_percent;
          });
        }
      });
      scope.stop = function() {
        scope.ngModel.stop();
        scope.playing = false;
      }
    }
  };
}]);

app.controller('RelatedCtrl', ['$scope', 'player', function($scope, player) {
  $scope.player = player;

  $scope.$watch('player.current', function(program) {
    if(program) {
      $scope.related = [];

      angular.forEach(program.relatedLink, function(link) {
        $scope.related.push({
          link: link.link[0].$text,
          caption: link.caption.$text
        });
      });
    }
  })
}]);

app.controller('FrameCtrl', ['$scope', function($scope) {
}]);
