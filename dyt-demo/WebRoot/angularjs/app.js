var app=angular.module("myApp",['ui.router']);

app.config(function ($stateProvider, $urlRouterProvider) {
    $stateProvider
    // 主页
        .state('main', {
            url: '/main',
            templateUrl: 'template/main.html',
            controller: 'mainCtrl'
        })
       

    $urlRouterProvider.otherwise('main');
});

app.directive("hello",function (){
    return{
        restrict:"E",
        template:"<div><h3>hello，你好！</h3></div>",
        replace:"true",
        controllrt: function($scope){
        }
    }
}
);

