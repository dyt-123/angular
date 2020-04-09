app.controller("appCtrl",function($scope,$state){
	$scope.world="你好，世界！";
	$scope.greet="你好，人类。";
	
	$scope.tomain=function(){
		$state.go("main");
	}
            
});
app.controller("mainCtrl",function($scope,appService){
	
	appService.queryList().done(function (data) {
        $scope.queryUserLists=data.list;
        console.log(data.page);
        console.log(data.list);
    })
})