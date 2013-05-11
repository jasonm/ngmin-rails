app = angular.module 'myApp', []

app.controller 'MainController', ($scope) ->

app.directive 'myDirective', ($location) ->
  restrict: 'EA'
  controller: ($scope, $element) ->

app.provider 'Service', ($location) ->
  @$get = ($window) ->
  null

app.provider 'OtherService',
  $get: ($window) ->
