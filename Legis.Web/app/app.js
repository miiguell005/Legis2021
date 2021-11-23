
var app = angular.module('Cinte', ["ngAnimate", "ngRoute", "ngResource" ])

app.config(function ($routeProvider) {

    $routeProvider
        .when('/', {
            templateUrl: 'views/votar/voto.html',
            controller: 'VotarController',
            controllerAs: 'voto'
        })  
        .otherwise({
            redirectTo: '/'
        });
})