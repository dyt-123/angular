<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	$(document).ready(function(){
    	$("#bank").click(function(){
			
		window.location.href="user/test2.do";
		});	
    })
	
	
	</script>
  </head>
  
  <body>
    <div id="dv1" style="margin: auto;width: 400px; height: 500px;margin-top: 80px;">
			<form action="user/addUserQian.do" method="post">
				<div id="" style="margin-left: 120px;">
					<h5>增加User</h5>
				</div>
				<div style="margin-left: 30px;margin-top: 20px;">
					<div style="float: left;">
						姓名
					</div>
					<div style="float: left;margin-left: 15px;">
						<input type="text" name="name" id="name"  />
					</div>
					<div style="clear: both;"></div>
				</div>
				
				<div style="margin-left: 30px;margin-top: 20px;">
					<div style="float: left;">
						年龄
					</div>
					<div style="float: left;margin-left: 15px;">
						<input type="text" name="age" id="age" />
					</div>
					<div style="clear: both;"></div>
				</div>
				
				<div style="margin-left: 30px;margin-top: 20px;">
					<div style="float: left;">
						电话
					</div>
					<div style="float: left;margin-left: 15px;">
						<input type="text" name="tel" id="tel"  />
					</div>
					<div style="clear: both;"></div>
				</div>
				
				
				<div style="margin-left: 30px;margin-top: 20px;">
					<div style="float: left;">
						部门
					</div>
					<div style="float: left;margin-left: 15px;">
						<select name="did" id="did">
                        <option value="1">软件部</option>
                        <option value="2">人事部</option>
                        <option value="3">行政部</option>
                     </select>
					</div>
					<div style="clear: both;"></div>
				</div>
				
				<div style="margin-left: 30px;margin-top: 20px;">
					<div style="float: left;">
						岗位
					</div>
					<div style="float: left;margin-left: 15px;">
						<select name="pid" id="pid">
                        <option value="1">岗位1</option>
                        <option value="2">岗位2</option>
                        <option value="3">岗位3</option>
                     </select>
					</div>
					<div style="clear: both;"></div>
				</div>
				<div style="margin-left: 30px;margin-top: 20px;">
					<div style="float: left;">
						科室
					</div>
					<div style="float: left;margin-left: 15px;">
						<select name="kid" id="kid">
                        <option value="1">科室1</option>
                        <option value="2">科室2</option>
                        <option value="3">科室3</option>
                     </select>
					</div>
					<div style="clear: both;"></div>
				</div>
				<div style="margin-left: 35px;margin-top: 40px;">
					<div style="float: left;">
						 <input type="submit" value="添加" />
					</div>
					<div style="float: left;margin-left: 45px;">
						<input type="button" id="bank" value="返回" />
					</div>
					<div style="float: left;margin-left: 45px;">
						<input type="reset" value="清空" />
					</div>
					<div style="clear: both;"></div>
				</div>
				
			</form>
		</div>
		
  </body>
</html>
