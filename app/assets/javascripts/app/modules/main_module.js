function MainController($scope, DataService, $log, $filter) {
  
  $scope.name = "Ziv";
  $scope.formattedname = $filter("uppercase")($scope.name);

  $log.log("Hello.");
  $log.info($scope.name);
  $log.info($scope.formattedname);
  $log.warn("Warning!");
  $log.debug("Some debugging information");
  $log.error("This was an error!!!!");

  var promise = DataService.get_data();
  var f = function (resp) {
    console.log(resp.data); //[]
    $scope.name = resp.data.name;
    $scope.email = resp.data.email;
  };
  promise.then(f);

  $scope.name = "Ziv";
}

function DataService($http) {
  this.get_data = function() {
    return $http.get("http://localhost:3000/api/v1/users");
  }
}

angular
  .module('main', ['ngRoute'])
  .controller('MainController', MainController)
  .service('DataService', DataService)
  .config(function ($routeProvider) {
    $routeProvider
      .when('/user', {
          templateUrl: 'templates/users.html',
          controller: 'MainController'
      });
