<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    <script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/angular.min.js" type="text/javascript" charset="utf-8"></script>
		
	<script src="js/wcrud.js" type="text/javascript" charset="utf-8"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<style>
		table{
			border: 2px solid black;
			width: 40%;	
			height:30%;
			border-spacing:0 ;
			background-color: palegoldenrod;
			border-collapse: collapse;
			text-align: center;
			
		}
      
  		 </style>
		
	<script type="text/javascript">
		$(document).ready(function(){
	    	
			 $("#seach").click(function(){
					var name=$("#name").val();
					if(name){
						var page=1;
						 window.location.href="user/test2.do?page="+page+"&name="+name;
					}else{
						alert("你输入的值为空");
				return;
					}
			});
	    	
	    	$("#all").click(function(){
	    		var ids =$("[name='ids']");
	    		$.each(ids,function(index,it){
	    			var shan=document.getElementById("all").checked;
					it.checked=shan;
	    		});
	    		
	    	});
	    	
	    	$("#deletes").click(function(){
				var arr=$("[name='ids']:checked");
				if(arr.length<=0){
					alert("请选择要删除的信息");
					return;
				}
				var ids="";
				
				for(var i=0;i<arr.length;i++){
					ids=ids+arr[i].value+","
				}
				ids=ids.substring(0,ids.length-1)
				
				alert(ids);
				window.location.href="user/deleteIds.do?ids="+ids;
			});
	    	
	    	
	    	
	    	$("#first").click(function(){
	    		var name=$("#name").val();
				var page=1;
				 window.location.href="user/test2.do?page="+page+"&name="+name;
	    	});
	    	
	    	$("#pre").click(function(){
	    		var name=$("#name").val();
				var paStr=$("#page").val();
				
				var page=parseInt(paStr)-1;
				if(page<1){
					page=1;
					}
				
				window.location.href="user/test2.do?page="+page+"&name="+name;
				});
	    	$("#next").click(function(){
				var name=$("#name").val();
				var tolPage=$("#tolPage").val();
				var pageStr=$("#page").val();
				
				var page=parseInt(pageStr)+1;
				if(page>parseInt(tolPage)){
					page=parseInt(tolPage);
				}
				window.location.href="user/test2.do?page="+page+"&name="+name;
			 });
	    	
	 		$("#last").click(function(){
				var name=$("#name").val();	
				var page=$("#tolPage").val();
				window.location.href="user/test2.do?page="+page+"&name="+name;
			});
			 
	    })
		
	</script>
  </head>
  <body ng-app="app" ng-controller="appCtrl">
			
	<div style="margin-top: 20px;"  >
			<input type="text" mame="name" id="name"   placeholder="请输入姓名查询"  />
			<button id="seach"  class="btn btn-primary" >查找</button>
			<button ng-click="addUser()"  class="btn btn-primary">添加</button>
			<button id="deletes" class="btn btn-danger">批量删除</button>
			
		<table border="2px" cellpadding="12px" cellspacing="" bgcolor=""  >
			
				<tr align="center">
					<td><input type="checkbox" id="all" /></td>
					<td width="100px">姓名</td>
					<td width="100px">年龄</td>
					<td width="230px">电话</td>
					<td width="100px">部门</td>
					<td width="100px">岗位</td>
					<td width="100px">科室</td>
					<td width="110px">操作</td>
				</tr>
			
			<c:forEach items="${pageBean.list}" var="a">
            <tr align="center">
           		 <td>
					<input type="checkbox" name="ids"  value="${a.id}" />
            	</td>
            
                <td>${a.name}</td>
                <td>${a.age}</td>
                <td>${a.tel}</td>
                <td>${a.devName}</td>
                <td>${a.postName}</td>
                <td>${a.keshiName}</td>
               
                <td>	
                <a href="user/delQian.do?id=${a.id}">删除</a>
                <a href="user/editUserQian.do?id=${a.id}">修改</a>
                </td>
            </tr>
        </c:forEach>
			
		</table>
		
		</div>
		<div id="" style="margin-top: 30px; margin-left: 110px;">
				<div style="float: left;margin-left:25px;">
					<input type="button" id="first" value="首页"  />
				</div>
				<div style="float: left;margin-left:25px;">
					<input type="button" id="pre" value="上一页"  />
				</div>
				<div style="float: left;margin-left:25px;">
					<input type="button" id="next" value="下一页" />
				</div>
				<div style="float: left;margin-left:25px;">
					<input type="button" id="last" value="尾页" />
				</div>
				<div style="float: left;margin-left:65px;">
					第
					<input type="text" id="page" style="width: 20px;" value="${pageBean.page}"/> 
					页
				</div>
				<div style="float: left;margin-left:45px;">

					共
					<input type="text" id="tolPage" style="width: 20px;" value="${pageBean.tolPage}" />
					 页
				</div>
				<div style="clear: both;"></div>
			</div>
  </body>
</html>
