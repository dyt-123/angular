app.factory("appService",function(){
	var appService={};
	
	appService.queryList=function(){
	 return	 $.ajax({
            type: 'POST',
             url: 'user/listAll.do',
            contentType: "application/json;charset=utf-8",
        })
	}
	
	return appService;
	
})