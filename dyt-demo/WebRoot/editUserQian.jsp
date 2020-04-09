<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>编辑</title>

<script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#bank").click(function() {

			window.location.href = "user/testAll.do";
		});

	})
</script>
</head>

<body>
	<div id="dv1"
		style="margin: auto; margin-top: 60px; width: 400px; height: 400px;">
		<form action="user/upDateUserQian.do" method="post">
			<div id="" style="margin-left: 110px;">
				<h1>用户编辑</h1>
			</div>
			<div style="margin-left: 30px; margin-top: 20px;">
				<div style="float: left;">姓名</div>
				<div style="float: left; margin-left: 15px;">
					<input type="hidden" id="id" name="id" value="${user.id}" /> <input
						type="text" name="name" id="name" value="${user.name}" />
				</div>
				<div style="clear: both;"></div>
			</div>

			<div style="margin-left: 30px; margin-top: 20px;">
				<div style="float: left;">年龄</div>
				<div style="float: left; margin-left: 15px;">
					<input type="text" name="age" id="age" value="${user.age}" />
				</div>
				<div style="clear: both;"></div>
			</div>

			<div style="margin-left: 30px; margin-top: 20px;">
				<div style="float: left;">电话</div>
				<div style="float: left; margin-left: 15px;">
					<input type="text" name="tel" id="tel" value="${user.tel}" />
				</div>
				<div style="clear: both;"></div>
			</div>



        	

			<div style="margin-left: 30px; margin-top: 20px;">
				<div style="float: left;">岗位</div>
				<div style="float: left; margin-left: 15px;">
					<input type="text" id="diden" value="${user.did}" /> 
					<select onchange="dids()" name="did" id="did">
						<option value="1">人事部</option>
						<option value="2">软件部</option>
						<option value="3">行政部</option>
						
					</select>
				</div>
				<div style="clear: both;"></div>
			</div>
			
			<script type="text/javascript">
				function dids(){
	           		 document.getElementById('diden').value=document.getElementById('did').value;
	       	 	}
			</script>
			<div style="margin-left: 30px; margin-top: 20px;">
				<div style="float: left;">部门</div>
				<div style="float: left; margin-left: 15px;">
					<input type="text" id="piden" value="${user.pid}" /> 
					<select onchange="pids()" name="pid" id="pid">
						<option value="1">岗位1</option>
						<option value="2">岗位2</option>
						<option value="3">岗位3</option>
					</select>
				</div>
				<div style="clear: both;"></div>
			</div>
			
			<script type="text/javascript">
				function pids(){
	           		 document.getElementById('piden').value=document.getElementById('pid').value;
	       	 	}
			</script>
			
			<div style="margin-left: 30px; margin-top: 20px;">
				<div style="float: left;">科室</div>
				<div style="float: left; margin-left: 15px;">
					<input type="text" id="kiden" value="${user.kid}" /> 
					<select onchange="kids()" name="kid" id="kid">
						<option value="1">科室1</option>
						<option value="2">科室2</option>
						<option value="3">科室3</option>
					</select>
				</div>
				<div style="clear: both;"></div>
			</div>
			<script type="text/javascript">
				function kids(){
	           		 document.getElementById('kiden').value=document.getElementById('kid').value;
	       	 	}
			</script>
			<div style="margin-left: 110px; margin-top: 40px;">
				<div style="float: left;">
					<input type="submit" value="保存" />
				</div>
				<div style="float: left; margin-left: 45px;">
					<input type="button" value="回退" id="bank" />
				</div>
				<div style="clear: both;"></div>
			</div>
		</form>
	</div>
</body>
</html>
