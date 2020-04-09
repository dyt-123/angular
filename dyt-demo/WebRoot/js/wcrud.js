var app = angular.module("app", []);
app.controller("appCtrl", function($scope){
	$scope.addUser =function(){
		window.location.href = "addQian.jsp"
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*$http({
        method: 'GET',
        url: 'user/test1.do'
    }).then(function successCallback(rsp) {
    	$scope.names= rsp.data;
    	$scope.users= rsp.data.list;
    	$scope.page=rsp.data.map;
        $scope.page=rsp.page;
         $scope.tolPage=rsp.tolPage;
         $scope.tolCount=rsp.tolCount;
            console.log(rsp.data);
            console.log(rsp.data.tolPage);
            console.log(rsp.data.pageCount);
            
            
        }, function errorCallback(response) {
            // 请求失败执行代码
        	alert("失败")
    });*/
	
	
	
	
	
	
	
	/*$scope.del=function(id){
		alert(1);
		for (var int = 0; int < $scope.users.length; int++) {
			
			console.log($scope.users[int].id);
			if(id == $scope.users[int].id){
				
				$scope.users.splice(int,1)
			}
		}
		
	}*/
	
	

});