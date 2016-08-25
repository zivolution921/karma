
function MainController($scope, DataService) {
  var promise = DataService.get_data();
  var f = function (resp) {
    console.log(resp.data);
  };
  promise.then(f);
  $scope.name = "Ziv";
}

function DataService($http) {
  this.get_data = function() {
    return $http.get("https://jsonplaceholder.typicode.com/posts");
  }
}

angular
  .module('main', [])
  .controller('MainController', MainController)
  .service('DataService', DataService);
  