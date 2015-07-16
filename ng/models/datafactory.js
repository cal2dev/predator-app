App.factory('dataFactory', ['$http', function($http) {

    var urlBase = 'api/';
    
    var dataFactory = {};
    var config_post = {headers:  {
        'App-key': APPKEY,
        'Content-Type': 'application/json'
    }};
    /*-------------------------------*
    | Login / Sign Up Module
    *--------------------------------*/

    dataFactory.validateLogin = function (loginCredentials) {
        return $http.post(urlBase+'login', loginCredentials,config_post);
    };

    dataFactory.signUp = function (signUpdata) {
    	//console.log(signUpdata);
        return $http.post('start/signup/', signUpdata,config_post);
     //If required to send data as post use below code
        /*return $http({
            method: 'POST',
            url: 'start/signup/',
            data: $.param({data: signUpdata}),
            headers: {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8','App-key': APPKEY}
        });*/
    };

    dataFactory.doLogOut = function () {
        return $http.get(urlBase+'logout');
    };

    /*-------------------------------*
    | Categories Module
    *--------------------------------*/
    dataFactory.getCategories = function () {
        return $http.get(urlBase+'getCategories');
    };

    /*-------------------------------*
    | Dashboard Module
    *--------------------------------*/

    dataFactory.getUserData = function(token) {
        return $http.get(urlBase+'getUserData');
    }

    return dataFactory;
}]);