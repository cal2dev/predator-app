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
                	var emailText = 'Email: '+response.email;
                	//console.log(emailText);
                	var passwordText = 'Password: '+response.password;
                	//console.log(passwordText);
                //	$location.path("about");
                })
                .error(function(report,status) {
                	console.log('in error'); 
                	 Notification.error({message: 'Error notification 1s', delay: 1000});
                	console.log(report);
					//console.log(status);
                	showMessage("msg","danger",report.error+" Error Code "+status+".");
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