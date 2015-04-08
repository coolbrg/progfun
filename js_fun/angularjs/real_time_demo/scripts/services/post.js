app.factory('Post', function ($resource) {
  return $resource('https://dazzling-fire-5588.firebaseio.com/posts/:id.json');
});
