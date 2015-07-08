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
        templateUrl: base_url+'load/login'
    })
    .when('/signup', {
        controller: 'signUpController',
        templateUrl: base_url+'load/signup'
    })
    .when('/home', {
        controller: '',
        templateUrl: base_url+'onBoard/home'
    })
    .when('/about', {
        controller: '',
        templateUrl: base_url+'onBoard/about'
    })
    .when('/contact', {
        controller: '',
        templateUrl: base_url+'onBoard/contact'
    })
    .otherwise({ redirectTo: '/home' });
}]);