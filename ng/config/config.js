/** APP MODULE INIT */
var App = angular.module('predator', ['ngRoute','ngCookies','ipCookie','ngAnimate','ui-notification']);

/** APP RUNTIME CONFIG */
App.run(['$rootScope','ipCookie','$location',function($rootScope,ipCookie,$location){
	/** DEFINE GLOBAL VARIABLES HERE */
	$rootScope.title = "predator";

}]);

App.config(['$routeProvider', '$locationProvider','$httpProvider',function($routeProvider,$locationProvider,$httpProvider) {
	$httpProvider.defaults.headers.common['App-key'] = APPKEY;
	//$httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded;charset=utf-8';
    $routeProvider.when('/login', {
        controller: 'authController',
        templateUrl: BASE_URL+'start/login'
    })
    .when('/signup', {
        controller: 'signUpController',
        templateUrl: BASE_URL+'start/signup'
    })
    .when('/home', {
        controller: '',
        templateUrl: BASE_URL+'onBoard/home'
    })
    .when('/about', {
        controller: '',
        templateUrl: BASE_URL+'onBoard/about'
    })
    .when('/contact', {
        controller: '',
        templateUrl: BASE_URL+'onBoard/contact'
    })
    .otherwise({ redirectTo: '/home' });
}]);