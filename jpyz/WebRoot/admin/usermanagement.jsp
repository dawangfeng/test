<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'usermanagement.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="admin/css/reset.css" />
	<link rel="stylesheet" href="admin/css/content.css" />
	<script type="text/javascript" src="admin/js/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-dialog.min.css">
	<script type="text/javascript" src="js/bootstrap-dialog.min.js"></script>
  </head>
  
  <body>
    <body marginwidth="0" marginheight="0">
	<div class="containers">
		<div class="public-nav">您当前的位置：<a href="">管理首页</a>><a href="">用户管理</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<a style="display: inline;" data-toggle="modal" data-target="#myModala">新增</a>
				<a style="display: inline;" onclick="jqchk()">删除</a>
				<a style="display: inline;" onclick="update()">修改</a>
			</div>
			<div class="public-content-cont">
				<table class="public-cont-table">
					<tr>
						<td style="width:20%">全选</td>
						<td style="width:30%">用户名</td>
						<td style="width:30%">密码</td>
						<td style="width:20%">操作</td>
					</tr>
				<c:forEach items="${luser}" var="info">
					<tr>
						<td><input name="test" type="checkbox" value="${info.userid}"/></td>
						<td>${info.username}</td>
						<td>${info.password}</td>
						<td>
							<div class="table-fun">
								<a href="">修改</a>
								<a href="">删除</a>
							</div>
						</td>
					</tr>
				</c:forEach>
				</table>
				<div class="page">
					<form action="" method="get">
					共<span>42</span>个站点
						<a href="">首页</a>
						<a href="">上一页</a>
						<a href="">下一页</a>
						第<span style="color:red;font-weight:600">12</span>页
						共<span style="color:red;font-weight:600">120</span>页
						<input type="text" class="page-input">
						<input type="submit" class="page-btn" value="跳转">
					</form>
				</div>
			</div>
		</div>
		<!-- Modal 新增弹出框的结构 -->
<div class="modal fade" id="myModala" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="myModalLabel" style="text-align: center;">新增用户</h4>
      </div>
      <div class="modal-body">
        <form id="userform" action="addUser.do" style="text-align: center;">
        	用户名:<input name="username" type="text"/>
        	密码:<input name="password" type="text"/>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" onclick="$('#userform').submit()">保存</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal 修改弹出框的结构 -->
<em id="a" data-toggle="modal" data-target="#myModalu"></em>
<div class="modal fade" id="myModalu" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="myModalLabel" style="text-align: center;">修改用户</h4>
      </div>
      <div class="modal-body">
        <form id="" action="addUser.do" style="text-align: center;">
        	用户名:<input name="username" type="text" value=""/>${user.username}
        	密码:<input name="password" type="text" value=""/>${user.password}
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" onclick="$('#').submit()">保存</button>
      </div>
    </div>
  </div>
</div>
	</div>
	<script type="text/javascript">
	function jqchk(){
	if($("input[name='test']:checked").length==0){
		alert("请选择要操作的数据");
		return false;
	}
	var obj=$("input[name='test']");
	var s=''; 
	for(var i=0; i<obj.length; i++){ 
	if(obj[i].checked)
	 s+=obj[i].value+','; //如果选中，将value添加到变量s中 
	} 
	s=s.substring(0, s.length-1);
	 $.ajax({
		type: "post",
		url: "delUserById.do",
		traditional: true,
		data:{ids:s},
		dataType: "json",
		success: function(data){
			alert(data);
			}
		});
	}
	function update(){
		if($("input[name='test']:checked").length==0){
		alert("请选择要操作的数据");
		return false;
		}
		$.ajax({
		type: "post",
		url: "findById.do",
		data:{userid:$("input[name='test']:checked").val()},
		dataType: "json",
		success: function(data){
			$("#a").click();
			}
		});
	}
	</script>
</body>
</html>
