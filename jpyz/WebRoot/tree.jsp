<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 <html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf8">
  <title>鼠标移到导航上面 当前的LI变色 处于当前的位置-柯乐义</title>
  <style type="text/css">
  ul,li{list-style:none;}
  #nav li{display:inline-block;margin:0 5px;background:#ccc;padding:0 10px; line-height:24px;font-size:12px;float:left;}
  #nav li.h_nav_over{background:red;color:#fff;}
  #nav li.h_nav_over a{color:#fff;}
 a{text-decoration:none;}
 
 </style>
 <script type="text/javascript" src="http://keleyi.com/keleyi/pmedia/jquery/jquery-1.10.2.min.js"></script>
 
 <script type="text/javascript">
 $(function(){
 $("#nav>ul>li").mouseover(function(){
         $("#nav>ul>li").each(function(i){
             $(this).removeClass("h_nav_over");
         });
         $(this).addClass("h_nav_over");
     }).mouseout(function(){
         $(this).addClass("h_nav_over");
     });
 });
 </script>
 
 </head>
 <body>
 <div id="nav">
      <ul>
         <li><a  href="http://keleyi.com" >首页</a></li><li><a  href="http://keleyi.com/a/bjac/2208fcb8.htm" >品牌商机</a></li>
         <li><a  href="http://keleyi.com/a/bjac/ec2s9a4n.htm" >精品商机</a></li><li><a  href="http://keleyi.com/a/bjac/m9p0je8s.htm" >最新商机</a></li>
         <li><a  href="http://keleyi.com/a/bjac/iphgrtqm.htm" >投资考察会</a></li><li><a  href="http://keleyi.com/a/bjac/kjsrt3b0.htm" >在线交流区</a></li>
      </ul>
 </div>
 </body>
</html>