App.controller('onBoardController', ['$scope','$rootScope','dataFactory','$location','$cookieStore','ipCookie','Notification','cfpLoadingBar', function($scope,$rootScope,dataFactory,$location,$cookieStore,ipCookie,Notification,cfpLoadingBar){
	if(ipCookie('cookie_login')){
		$location.path("dashboard");
	}
	$scope.pageClass = 'page-home';
	
	
}])

