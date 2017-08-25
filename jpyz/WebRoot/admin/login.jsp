<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="admin/css/reset.css" />
	<link rel="stylesheet" href="admin/css/login.css" />
	<script type="text/javascript" src="admin/js/jquery.min.js"></script>
  </head>
  
  <body>
    <div class="page">
	<div class="loginwarrp">
		<div class="logo">管理员登陆</div>
        <div class="login_form">
			<form id="Login" name="Login" method="post" action="login.do">
				<li class="login-item">
					<span>用户名：</span>
					<input type="text" name="username" class="login_input">
				</li>
				<li class="login-item">
					<span>密　码：</span>
					<input type="password" name="password" class="login_input">
				</li>
				<!-- <li class="login-item verify">
					<span>验证码：</span>
					<input type="text" name="CheckCode" class="login_input verify_input">
				</li>
				<script type="text/javascript" src="admin/js/jquery.min.js"></script>
				<script type="text/javascript">
				$(function(){
					getcode();
				});
					 function getcode(){
					 alert(1);
						 $.ajax({
			             type: "post",
			             url: "getcode.do",
			             data:{},
			             dataType: "json",
			             success: function(data){},
			             error:function(XMLHttpRequest, textStatus, errorThrown) {
							var bigImg = document.createElement("img");     //创建一个img元素  
					        bigImg.src="admin/images/code.png";   //给img元素的src属性赋值  
					        bigImg.class="verifyimg";
					        var myDiv = document.getElementById('code');
							myDiv.appendChild(bigImg);
							}
			         });
					};
				</script> -->
<!-- 				<img src="images/verify.png" border="0" class="verifyimg" /> -->
				<div id="code"></div>
				<div class="clearfix"></div>
				<li class="login-sub">
					<input type="button" name="Submit" value="登录" onclick="login()" />
				</li>                      
           </form>
           <script type="text/javascript">
					 function login(){
						 $.ajax({
			             type: "post",
			             url: "login.do",
			             data:{username:$("input[name='username']").val(),password:$("input[name='password']").val()},
			             dataType: "json",
			             success: function(data){
			             	if (data.Info == "success") {
							window.location.href = "index.do";
							}
			             }
			         });
					};
				</script>
		</div>
	</div>
</div>
  </body>
</html>
