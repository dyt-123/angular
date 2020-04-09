<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>列表</title>

<script src="js/angular.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="css/style.css">
<script src="js/crud.js" type="text/javascript" charset="utf-8"></script>

<link rel="stylesheet" href="css/bootstrap.min.css">

<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#all").click(function() {
			var ids = $("[name='ids']");
			$.each(ids, function(index, it) {
				var shan = document.getElementById("all").checked;
				it.checked = shan;
			});

		});

		$("#deletes").click(function() {
			var arr = $("[name='ids']:checked");
			if (arr.length <= 0) {
				alert("请选择要删除的信息");
				return;
			}
			var ids = "";

			for (var i = 0; i < arr.length; i++) {
				ids = ids + arr[i].value + ","
			}
			ids = ids.substring(0, ids.length - 1)
			window.location.href = "user/deletes.do?ids=" + ids;
		});

	})
</script>

</head>
<body ng-app="app" ng-controller="appCtrl">

	<div style="margin-top: 20px;">
		<input type="text" mame="name" id="name" placeholder="请输入姓名查询"
			ng-model="seachName" />
		<button id="seach" ng-click="seName()" class="btn btn-primary">查找</button>
		<button class="btn btn-primary" data-toggle="modal"
			data-target="#myModal">添加</button>
		<!-- <button class="btn btn-primary" >批量删除</button> -->
		<button class="btn btn-danger" id="deletes">批量删除</button>
		<table border="2px" cellpadding="12px" cellspacing="" bgcolor="">

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

			<tr ng-repeat="a in names.list" align="center">
				<td><input type="checkbox" value="{{a.id}}" name="ids">
					<!-- i ng-click="checkIds(a.id)" ng-class="{'icon-check-empty':checkIn(a.id),'icon-check':!checkIn(a.id)}"></i> -->
				</td>

				<td>{{a.name}}</td>
				<td>{{a.age}}</td>
				<td>{{a.tel}}</td>
				<td>{{a.devName}}</td>
				<td>{{a.postName}}</td>
				<td>{{a.keshiName}}</td>
				<td><button ng-click="del(a.id)" class="btn btn-danger"
						style="margin-top: 10px; margin-bottom: 10px">删除</button> <!-- <button style="margin-top:10px;margin-bottom: 10px" class="btn btn-primary" data-toggle="modal" data-target="#editModal" >修改</button> -->
					<button style="margin-top: 10px; margin-bottom: 10px"
						class="btn btn-primary" data-toggle="modal"
						data-target="#myModalEdit" ng-click="myModalEdit(a.id)">修改</button></td>

			</tr>
		</table>
	</div>
	<!-- 分页界面	 -->
	<div id="" style="margin-top: 30px; margin-left: 110px;">
		<div style="float: left; margin-left: 25px;">
			<input type="button" id="first" value="首页" ng-click="first()" />
		</div>
		<div style="float: left; margin-left: 25px;">
			<input type="button" id="pre" value="上一页" ng-click="pre()" />
		</div>
		<div style="float: left; margin-left: 25px;">
			<input type="button" id="next" value="下一页" ng-click="next()" />
		</div>
		<div style="float: left; margin-left: 25px;">
			<input type="button" id="last" value="尾页" ng-click="last()" />
		</div>
		<div style="float: left; margin-left: 65px;">
			第 <input type="text" id="page" style="width: 20px;"
				ng-model="names.page" /> 页
		</div>
		<div style="float: left; margin-left: 45px;">

			共 <input type="text" id="tolPage" style="width: 20px;"
				ng-model="names.tolPage" /> 页
		</div>
		<div style="clear: both;"></div>
	</div>

	<!--添加模态框（Modal） -->
	<div class="update_model">

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">添加</h4>
					</div>
					<div class="modal-body">

						姓名:<input type="text" ng-model="user.name" /><br /> <br /> 年龄:<input
							type="text" ng-model="user.age" /><br /> <br /> 电话:<input
							type="text" ng-model="user.tel" /><br /> <br /> 部门:
							<select
							 ng-model="user.did">
							<option value="1">人事部</option>
							<option value="2">软件部</option>
							<option value="3">行政部</option>
						</select><br /> <br /> 岗位:<select ng-model="user.pid">
							<option value="1">岗位1</option>
							<option value="2">岗位2</option>
							<option value="3">岗位3</option>
						</select><br /> <br /> 科室:<select ng-model="user.kid">
							<option value="1">科室1</option>
							<option value="2">科室2</option>
							<option value="3">科室3</option>
						</select><br /> <br />

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" ng-click="submit()">提交更改</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>

		<!--修改模态框（Modal） -->
		<!-- ng-repeat="b in editModel"  -->
		<div class="update_model">
			<div class="modal fade" id="myModalEdit" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true"
				data-backdrop="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<!--登陆框头部-->
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">修改信息</h4>
						</div>
						<!--登陆框中间部分(from表单)-->
						<div class="modal-body">
							<form class="form-horizontal" role="form">
								<!--用户框-->
								<div class="form-group">
									<label for="name" class="col-sm-2 control-label">姓名</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="name"
											ng-model="editModel.name" required="required">
									</div>
								</div>
								<!--age-->
								<div class="form-group">
									<label for="age" class="col-sm-2 control-label">年龄</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="age"
											ng-model="editModel.age" required="required">
									</div>
								</div>

								<!--tel-->
								<div class="form-group">
									<label for="tel" class="col-sm-2 control-label">电话</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="tel"
											ng-model="editModel.tel" required="required">
									</div>
								</div>
								<!--did-->
								<div class="form-group">
									<label for="did" class="col-sm-2 control-label">部门</label>
									<div class="col-sm-10">
										<input type="text" ng-model="editModel.did"/>
										 <select ng-model="editModel.did">
											<option value="1">人事部</option>
											<option value="2">软件部</option>
											<option value="3">行政部</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="pid" class="col-sm-2 control-label">岗位</label>
									<div class="col-sm-10">
										<input type="text"  ng-model="editModel.pid" /> 
										<select ng-model="editModel.pid">
											<option value="1">岗位1</option>
											<option value="2">岗位2</option>
											<option value="3">岗位3</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="kid" class="col-sm-2 control-label">科室</label>
									<div class="col-sm-10">
										<input type="text"  ng-model="editModel.kid" /> 
										<select ng-model="editModel.kid">
											<option value="1">科室1</option>
											<option value="2">科室2</option>
											<option value="3">科室3</option>
										</select>
									</div>
								</div>
								
								<!--登陆按钮-->
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-10">
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">关闭</button>
										<button type="button" class="btn btn-primary"
											ng-click="submitEdit()">提交更改</button>

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
</body>
</html>
