var app = angular.module("app", []);
app.controller("appCtrl", function($scope, $http,$window) {

	$scope.seachName='';
	//请求数据
	 $http({
	        method: 'POST',
	        url: 'user/listAll.do'
	    }).then(function successCallback(list) {
	    	$scope.names= list.data;
	    	$scope.tolCount=list.data.tolCount;
	    	
	        }, function errorCallback(response) {
	            // 请求失败执行代码
	        	alert("失败1111111111")
	    });
	
	
	 
	 /*---------通过ID删除-----------*/	 
	 $scope.del= function(id){
		 var d=window.confirm('你确定要删除吗?')
		 if(d==true){
			 $.ajax({
					type: 'POST',
		            url: 'user/del.do?id=' + id,
		            contentType: "application/json;charset=utf-8"
				})
				$window.location.href="list.jsp"
		 }
		 return;
		 	
			
	 }
	 

	$scope.checkButt=false;
	/*-------添加 用户----------*/
	 $scope.submit = function() {
			if($scope.checkButt)
			$scope.checkButt=true;
			
			//判断非空 必须为数字
			if($scope.user.name == "" || $scope.user.name == null) {
				alert("商品名称不能为空");
			}

			if($scope.user.age== "" || $scope.user.age == null) {
				alert("年龄不能为空");
			}
			if(isNaN($scope.user.age)){
				alert("年龄必须为数字");
			}

			if($scope.user.tel == "" || $scope.user.tel == null) {
				alert("电话不能为空");
			}
			var confi= window.confirm('你确定要添加信息吗?')
			console.log(confi);
			if(confi==true){
				 $.ajax({
						type: 'POST',
			            url: 'user/addUser.do',
			            contentType: "application/json;charset=utf-8",
			            data: JSON.stringify($scope.user)	
					})
			}else{
				$window.location.href="list.jsp"
			}
			
		
			$window.location.reload();
				
		}
	 
	
	 
	 /*-----------通过ID修改--------*/
	 $scope.myModalEdit= function(id) {
		 $http({
		        method: 'POST',
		        url: 'user/seachUserId.do?id='+id,
		    }).then(function successCallback(list) {
		    	$scope.editModel= list.data;
		    	
		        }, function errorCallback(response) {
		            // 请求失败执行代码
		        	alert("失败")
		    });
			
	 }
	 
	 
	/*--------修改的模拟态提交----------*/
	 $scope.submitEdit=function(){
		var sub= window.confirm('你确定要修改信息吗?')
		if(sub==true){
			$.ajax({
				type: 'POST',
	            url: 'user/upDate.do',
	            contentType: "application/json;charset=utf-8",
	            data: JSON.stringify($scope.editModel)	
			})
			alert("提交成功！");
			$window.location.href="list.jsp"
		}else{
			$window.location.href="list.jsp"
		} 
			
	 }
	 
	 
	 
	/*-------查询--------*/
	 $scope.seName=function(){
			if($scope.seachName){
				$http({
			        method: 'POST',
			        url: 'user/listAllTg.do?page='+1+"&name="+$scope.seachName
			    }).then(function successCallback(list) {
			    	$scope.names= list.data;
			    	console.log($scope.names);
			        }, function errorCallback(response) {
			            // 请求失败执行代码
			        	alert("失败1111111111")
			    });
				
			}else{
				alert("你输入的值为空");
		return;
			}
	 }
	 
	 
	 
	
	/* 首页*/
	$scope.first=function(){
		
		$http({
		    method: 'POST',
		    url: 'user/listAllTg.do?page='+1+'&name='+$scope.seachName    
		}).then(function successCallback(rsp) {
		       $scope.names=rsp.data;
		       console.log($scope.names)
		    }, function errorCallback(response) {
		        // 请求失败执行代码
		});
		
	}
	
	/*上一页 */
	 $scope.pre =function(){
		 $scope.names.page=$scope.names.page-1;
			if($scope.names.page<1){
				$scope.names.page=1;
			}
			
			$http({
			    method: 'POST',
			    url: 'user/listAllTg.do?page='+$scope.names.page+'&name='+$scope.seachName
			}).then(function successCallback(rsp) {
			       $scope.names=rsp.data;
			       console.log($scope.names)
			    }, function errorCallback(response) {
			        // 请求失败执行代码
			});
			
		 
	 }
	 /* 下一页*/
	 $scope.next =function(){
		 $scope.names.page=$scope.names.page+1;
		if( $scope.names.page>$scope.names.tolPage){
			 $scope.names.page=$scope.names.tolPage;
		}
		$http({
	        method: 'POST',
	        url: 'user/listAllTg.do?page='+$scope.names.page +"&name="+$scope.seachName
	    }).then(function successCallback(list) {
	    	$scope.names= list.data;
	    	console.log($scope.names)
	        }, function errorCallback(response) {
	            // 请求失败执行代码
	        	alert("下一页请求失败")
	    });
			
	 }
	 /*尾页 */
	 $scope.last =function(){
		 $scope.names.page=$scope.names.tolPage;
			
			$http({
		    method: 'POST',
		    url: 'user/listAllTg.do?page='+$scope.names.page+'&name='+$scope.seachName
		}).then(function successCallback(rsp) {
		       $scope.names=rsp.data;
		       console.log($scope.names)
		    }, function errorCallback(response) {
		        // 请求失败执行代码
		});
		
	 }
	 
	

});