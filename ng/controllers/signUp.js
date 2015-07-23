App.controller('signUpController', ['$scope','$rootScope','dataFactory','$location','$cookieStore','ipCookie','Notification', function($scope,$rootScope,dataFactory,$location,$cookieStore,ipCookie,Notification){
	if(ipCookie('cookie_login')){
		$location.path("dashboard");
	}
	$scope.pageClass = 'page-home';
	$rootScope.rightmenu = [];
	/** Submitting signup form */
	$scope.signup = function(isValid) {
		if(isValid) {
			var loginCredentials = {
                "email" : $scope.user.email,
                "password" : $scope.user.password,
                "firstName" : $scope.user.firstName,
                "lastName" : $scope.user.lastName
            };
			//console.log(loginCredentials);
            dataFactory.signUp(loginCredentials)
                .success(function (response,status) {
                	
                	var msg=getHtmlMessage(response.message);
                	Notification.success({message: msg, title: '<i>Great!!  </i>', delay: 20000});
                	$location.path("onBoard");
                })
                .error(function(report,status) {
                	console.log(report);
                	var msg=getHtmlMessage(report.message);
                	//Notification.error({message: 'Error notification 1s', delay: 5000});
                	Notification.error({message: msg, title: '<i>OOps!! Somethng Went Wrong </i>', delay: 10000});
                	console.log();
					//console.log(status);
                //	showMessage("msg","danger",report.error+" Error Code "+status+".");
                });
		}else{
			alert('Bad');
		}
	}
	
}])
App.directive('pwCheck', [function () {
    return {
      require: 'ngModel',
      link: function (scope, elem, attrs, ctrl) {
        var firstPassword = '#' + attrs.pwCheck;
        elem.add(firstPassword).on('keyup', function () {
          scope.$apply(function () {
            var v = elem.val()===$(firstPassword).val();
            ctrl.$setValidity('pwmatch', v);
          });
        });
      }
    }
  }]);
