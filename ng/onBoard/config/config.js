/** APP MODULE INIT */
var App = angular.module('predator', ['ngRoute','ngCookies','ipCookie','ngAnimate']);

/** APP RUNTIME CONFIG */
App.run(['$rootScope','ipCookie','$location',function($rootScope,ipCookie,$location){
	/** DEFINE GLOBAL VARIABLES HERE */
	$rootScope.title = "predator";

}]);

App.config(['$routeProvider', '$locationProvider',function($routeProvider,$locationProvider) {
    $routeProvider.when('/login', {
        controller: 'authController',
        templateUrl: 'ng/onBoard/views/loginUI.html'
    })
    .when('/signup', {
        controller: 'signUpController',
        templateUrl: 'ng/onBoard/views/signUpUI.html'
    })
    .when('/home', {
        controller: '',
        templateUrl: 'ng/onBoard/views/home.html'
    })
    .when('/about', {
        controller: '',
        templateUrl: 'ng/onBoard/views/about.html'
    })
    .when('/contact', {
        controller: '',
        templateUrl: base_url+'welcome'
    })
    .otherwise({ redirectTo: '/login' });
}]);