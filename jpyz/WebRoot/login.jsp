<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Remember the password test</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
  	<script type="text/javascript" src="js/jquery.cookie.js"></script>
  </head>
  
  <script type="text/javascript"> 
$(document).ready(function() { 
	//获取cookie判断是否存在
	alert($.cookie("username"));
	alert($.cookie("password"));
	if ($.cookie("user") == "true") { 
		$("#rmbUser").prop("checked", true); 
		$("#username").val($.cookie("username")); 
		$("#password").val($.cookie("password")); 
	} 
}); 
//保存用户信息 
function saveUserInfo() { 
	if ($("input[type='checkbox']").is(':checked') == true) { //判断用户是否勾选记住我按钮
		var userName = $("#username").val(); 
		var passWord = $("#password").val(); 
		$.cookie("user", "true", { expires: 7 }); // 存储一个带7天期限的 cookie 
		$.cookie("username", userName, { expires: 7 }); // 存储一个带7天期限的 cookie 
		$.cookie("password", passWord, { expires: 7 }); // 存储一个带7天期限的 cookie 
		location.href="index.jsp";
	}else{ 
		//没有勾选不保存信息
		$.cookie("user", "false", { expires: -1 }); 
		$.cookie("username", '', { expires: -1 }); 
		$.cookie("password", '', { expires: -1 }); 
		location.href="index.jsp"; 
	} 
} 

</script>
</head> 
<body> 
<form id="form1"> 
<div>  
用户名:<input type="text" id="username"> 
<input type="password" id="password"> 
密码： 
<input type="checkbox" id="rmbUser"/> 
记住密码 
<input type="button" OnClick="saveUserInfo()" value="进入"/> 
</div> 
</form> 
</body>
</html>
