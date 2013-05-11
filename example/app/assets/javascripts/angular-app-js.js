var app = angular.module('myApp', []);

app.controller('MainController', function($scope) {});

app.directive('myDirective', function($location) {
  return {
    restrict: 'EA',
    controller: function($scope) {}
  };
});

app.provider('Service', function($location) {
  this.$get = function($window) {};
});

app.provider('OtherService', {
  $get: function($window) {}
});
