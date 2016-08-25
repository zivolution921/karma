function NotificationService() {
  this.notify = function (message) {
    alert(message);
  };
}

angular
  .module('app')
  .service('NotificationService', NotificationService);