<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>6-9</title>
        <script type="text/javascript">
            var c = 0;
            var t;
            function timedCount() {
                document.getElementById('txt').value=c;
                c = c+1;
                t = setTimeout("timedCount()", 1000);
            }
            function stopCount() {
                clearTimeout(t);
            }
        </script>
    </head>
    <body>
        <form>
            <input type="button" value="开始计时！" onclick="timedCount()">
            <input type="text" id="txt">
            <input type="button" value="停止计时！" onclick="stopCount()">
        </form>
        <p>请点击上面的“开始计时”按钮。输入框会从 0 开始一直进行计时。点击“停止计时”可停止计时。</p>
    </body>
</html>