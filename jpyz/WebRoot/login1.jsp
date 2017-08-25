<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>登录页面</title>
	<link rel="stylesheet" href="css/style2.css">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>	
	<script type="text/javascript" src="js/jquery.cookie.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Lambent Login Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script type="text/javascript">
		$(document).ready(function() { 
	//获取cookie判断是否存在
	if ($.cookie("user") == "true") { 
		$("#brand1").prop("checked", true); 
		$("#username").val($.cookie("username")); 
		$("#password").val($.cookie("password")); 
	} 
}); 
	</script>
</head>
<body>
	<!-- <h1>欢迎登录金牌产品展示</h1> -->
	<div class="main-agileinfo">
		<h2>你的账户</h2>
			<input type="text" name="name" id="username" class="name" placeholder="用户名">
			<input type="password" name="password" id="password" class="password" placeholder="密码">
			<ul>
				<li>
					<input type="checkbox" id="brand1">
					<label for="brand1"><span></span>记得我</label>
				</li>
			</ul>
            <!-- <a href="#">忘记密码?</a> --><br>
			<div class="clear"></div>
			<input type="submit" value="登录" onclick="javascript:userlogin();">
	</div>
	<div class="footer-w3l">
		<p class="agile"> &copy; 2017 佛山金牌亚洲有限公司</a></p>
	</div>
	<script type="text/javascript">
		function userlogin() {
			var username=$("#username").val();
			var password=$("#password").val();
			 $.ajax({ 
				type : "POST", 
		        url : "user/login.do",  
		       	data : {
		        	username:username,
		        	password:password
		        }, 
		        dataType:'json', 
		       	success : function(data) {
		       		if(data.message=="succ"){
		       		 	if ($("input[type='checkbox']").is(':checked') == true) { //判断用户是否勾选记住我按钮
							var userName = $("#username").val(); 
							var passWord = $("#password").val(); 
							$.cookie("user", "true", { expires: 7 }); 
							$.cookie("username", userName, { expires: 7 }); 
							$.cookie("password", passWord, { expires: 7 }); 
							location.href="index.jsp";
						}else{ 
							//没有勾选不保存信息
							$.cookie("user", "false", { expires: -1 }); 
							$.cookie("username", '', { expires: -1 }); 
							$.cookie("password", '', { expires: -1 }); 
							location.href="index.jsp";
						} 
		       		 }
				},
			}); 
		}
	</script>
</body>
</html>