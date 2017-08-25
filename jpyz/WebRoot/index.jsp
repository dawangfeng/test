<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.model.Usertable" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Usertable user=(Usertable)request.getSession().getAttribute("user");
if(user==null){
	request.getRequestDispatcher("/login1.jsp").forward(request, response);
	return;
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>金牌亚洲首页</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/cpsj.css" type="text/css"></link>
        <link href="css/style.css" rel="stylesheet">
       	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
		<script type="text/javascript" src="js/loginout.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<link rel="stylesheet" href="css/pignose.layerslider.css" type="text/css"></link>
  		<script type="text/javascript" src="js/jqPaginator.min.js"></script>
  		<script src="//cdn.bootcss.com/sco.js/1.1.0/js/sco.modal.min.js"></script>
  		<script type="text/javascript">

		$(function() {
		//初始化分页控件   
	$.jqPaginator('#pagination', {        
	totalPages: 10,         //总页数
	visiblePages: 10,     //显示多少个页码    
	currentPage: 1,  
	first: '<li class="first"><a href="javascript:;">首页</a></li>',
	prev: '<li class="prev"><a href="javascript:;"><i class="arrow arrow2"></i>上一页</a></li>',
	page: '<li class="page"><a href="javascript:;">{{page}}</a></li>',
	next: '<li class="next"><a href="javascript:;">下一页<i class="arrow arrow3"></i></a></li>',
	last: '<li class="last"><a href="javascript:;">末页</a></li>',
	
	onPageChange: function (num, type) {
		search(num);  
		} 
	}); 
	});
	function search(pageIndex){
		
		var inputid=$("#chicuiuid").val();
		var chicui=$("#input"+inputid).val();
		var dalieid=$("#dalieid").val();
		$.ajax({ 
				type : "POST", 
		        url : "xinxi/index.do",  
		        data : {
		        	dalieid:dalieid,
		        	liebieid:inputid,
		        	chicui:chicui,
		        	currentPage:pageIndex
		        }, 
		        dataType:'json', 
		        success : function(data) {
				var page=data.page;  
				var list=data.list;
				if(page.totalPage>0){ 
					$('#pagination').jqPaginator('option', { 
						totalPages: page.totalPage//总页数 
						}); 
				} 
				$("#countid").text(data.count);
				 $("#xiang div").remove();
				//遍历list集合
				jQuery.each(list, function(i,item){
				var cts=item.goodstemplateimg;
					if(cts.indexOf("-") > 0){
					var strs= new Array(); //定义一数组 
					strs=cts.split("-");
					 $("#xiang").append('<div class="cpms">'
						+'<div class="cpms_left">'
	   						+'<a href=""> <div class="cpms_img1_box"><img src="'+item.goodsrenderingimg+'" alt="" class="cpms_img1"></div></a>'
							+'<a href=""><div class="cpms_img2_box"><img src="'+strs[0]+'" alt="" class="cpms_img2" width="288" height="143" data-margin-top="71" data-margin-left="0" data-width="289" data-height="144" style="margin-top: 71px; visibility: visible; margin-left: 0px; width: 349px; height: 144px;"></div></a></div>'
						+'<div class="cpms_right">'
							+'<h2>'+item.goodsno+'</h2>'
							+'<p class="cpms_ms">'+item.description+'</p>'
							+'<p class="cpms_xh">型号：'+item.goodsno+'<br> 规格：'+item.specifications+'</p>'
							+'<span><input type="button" onclick="javascript:detail('+item.goodsid+')" class="btn btn-default" value="查看详情"/></span>'
						+'</div>'
					+'<div style="clear:both;"></div>'
					+'</div>');
				    }else{
				    $("#xiang").append('<div class="cpms">'
						+'<div class="cpms_left">'
	   						+'<a href=""> <div class="cpms_img1_box"><img src="'+item.goodsrenderingimg+'" alt="" class="cpms_img1"></div></a>'
							+'<a href=""><div class="cpms_img2_box"><img src="'+item.goodstemplateimg+'" alt="" class="cpms_img2" width="288" height="143" data-margin-top="71" data-margin-left="0" data-width="289" data-height="144" style="margin-top: 71px; visibility: visible; margin-left: 0px; width: 349px; height: 144px;"></div></a></div>'
						+'<div class="cpms_right">'
							+'<h2>'+item.goodsno+'</h2>'
							+'<p class="cpms_ms">'+item.description+'</p>'
							+'<p class="cpms_xh">型号：'+item.goodsno+'<br> 规格：'+item.specifications+'</p>'
							+'<span><input type="button" onclick="javascript:detail('+item.goodsid+')" class="btn btn-default" value="查看详情"/></span>'
						+'</div>'
					+'<div style="clear:both;"></div>'
					+'</div>');	
				    }	
	            }); 
			},
		});
	}
	
</script>
<script type="text/javascript">
	function detail(id) {
		$.ajax({ 
				type : "POST", 
		        url : "xinxi/detail.do",  
		        data : {
		        	id:id
		        }, 
		        dataType:'json', 
		        success : function(data) {
					location.href="single.jsp";
			},
		});
	}
</script>

  		</head>
  <body>
        <div class="first_header">
            <div class="container custome_container">
                <div class="live_chat_area pull-left">
                    <a href="tencent://message/?uin=875529449&Site=sc.chinaz.com&Menu=yes"><i class="lnr lnr-bubble">在线QQ</i></a>
                    <a href="#"><i class="lnr lnr-envelope"></i>客服电话:400-8632-882</a>
                </div>
                <div class="live_chat_area pull-right">
                	<a href="javascript:void(0);" id="jishi"></a>
                	<a href="javascript:void(0);"><i class="lnr"></i>本人账户：<%=user.getUsername() %></a>
                	<a href="javascript:void(0);" onclick="javascript:loginout();">退出登录</a>
                </div>
            </div>
        </div>
        <script type="text/javascript">
        	window.setTimeout(function jishi() {
				var myDate = new Date();
				myDate.getYear();        //获取当前年份(2位)
				myDate.getFullYear();    //获取完整的年份(4位,1970-????)
				myDate.getMonth();       //获取当前月份(0-11,0代表1月)
				myDate.getDate();        //获取当前日(1-31)
				myDate.getDay();         //获取当前星期X(0-6,0代表星期天)
				myDate.toLocaleDateString();     //获取当前日期
				var mytime=myDate.toLocaleTimeString();     //获取当前时间
				$("#jishi").text(myDate.toLocaleString());
			},60)
        </script>
        <div class="logo_area">
            <div class="container custome_container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="website_logo">
                            <a href="index.jsp"><img src="img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-md-7">
                       <div class="search">
							<input type="text" value="搜索" class="text" id="textt">
							<button class="button">搜索</button>
						</div>
                    </div>
                    <div class="col-md-2">
			            <div class="right">
							<i class="gw-left" style="background:url(img/jd2015img.png)0 -58px no-repeat;width:24px;height:24px;"></i>
							<i class="gw-right">&gt;</i>
							<i class="gw-count"><span id="countid"></span></i>
							<a href="cart.jsp">我的购物车</a>
							<!-- <div class="dorpdown-layer">
								<img src="img/settleup-nogoods.png">
								购物车中还没有商品，赶紧选购吧！
							</div> -->
						</div>
                    </div>
                </div>
            </div>
        </div>
        <header class="main_menu_area">
            <nav class="navbar navbar-default">
                <div class="container custome_container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar">1</span>
                            <span class="icon-bar">2</span>
                            <span class="icon-bar">3</span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav" id="uul">
                        	 <li><a href="javascript:void(0);"  onclick="chaxunxilie(1,this)">现代仿古砖</a></li>
                            <li><a href="javascript:void(0);"  onclick="chaxunxilie(2,this)">大理石瓷砖</a></li>
                            <li><a href="javascript:void(0);"  onclick="chaxunxilie(3,this)">微晶石</a></li>
                            <li><a href="javascript:void(0);"  onclick="chaxunxilie(4,this)">抛釉砖</a></li>
                            <li><a href="javascript:void(0);"  onclick="chaxunxilie(5,this)">仿古砖</a></li>
                            <li><a href="javascript:void(0);"  onclick="chaxunxilie(6,this)">抛光砖</a></li>
                            <li><a href="javascript:void(0);"  onclick="chaxunxilie(7,this)">瓷片</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container -->
            </nav>
        </header>
        <div class="category-tab-content">
   <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
        <li data-target="#myCarousel" data-slide-to="6"></li>
        <li data-target="#myCarousel" data-slide-to="7"></li>
        <li data-target="#myCarousel" data-slide-to="8"></li>
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner" align="center">
        <div class="item active">
            <img src="img/lunbo/001.jpg" style="width: 1420px;height: 400px;" alt="First slide">
        </div>
        <div class="item">
            <img src="img/lunbo/002.jpg" style="width: 1420px;height: 400px;" alt="Second slide">
        </div>
        <div class="item">
            <img src="img/lunbo/003.jpg" style="width: 1420px;height: 400px;" alt="Third slide">
        </div>
        <div class="item">
            <img src="img/lunbo/004.jpg" style="width: 1420px;height: 400px;" alt="Third slide">
        </div>
        <div class="item">
            <img src="img/lunbo/005.jpg" style="width: 1420px;height: 400px;" alt="Third slide">
        </div>
        <div class="item">
            <img src="img/lunbo/006.jpg" style="width: 1420px;height: 400px;" alt="Third slide">
        </div>
        <div class="item">
            <img src="img/lunbo/007.jpg" style="width: 1420px;height: 400px;" alt="Third slide">
        </div>
        <div class="item">
            <img src="img/lunbo/008.jpg" style="width: 1420px;height: 400px;" alt="Third slide">
        </div>
        <div class="item">
            <img src="img/lunbo/009.jpg" style="width: 1420px;height: 400px;" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" 
        data-slide="prev">&lsaquo;
    </a>
    <a class="carousel-control right" href="#myCarousel" 
        data-slide="next">&rsaquo;
    </a>
</div>
      <script type="text/javascript">
      		function chaxunxilie(id,obj) {
        	 	$("#uul li a").css("color","white");
        	 	$("#dalieid").val(id);
                obj.style.color = "black";
      			$("#xilie li").remove();
				if(id=="1"){
					$("#xilie").append('<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(11);">野兽派</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(12);">理石派</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(13);">岩石派</a></li>');
				}else if(id=="2"){
					$("#xilie").append('<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(21);">天然大理石</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(22);">尊上系列</a></li>');
				}else if(id=="3"){
					$("#xilie").append('<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(31);">宙晶</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(32);">宙晶背景墙</a></li>'+
					'<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(33);">天玺</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(34);">金翠</a></li>');
				}else if(id=="4"){
					$("#xilie").append('<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(41);">天境</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(42);">天境II代</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(43);">星岩</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(44);">ID石</a></li>');
				}else if(id=="5"){
					$("#xilie").append('<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(51);">真木木纹砖</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(52);">1881美式板岩</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(53);">1881宫廷御石</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(54);">1881美式雪魅岩</a></li>');
				}else if(id=="6"){
					$("#xilie").append('<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(61);">藏珑</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(62);">泛彩玉晶</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(63);">金香玉</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(64);">珑脉</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(65);">木石天成</a></li>'
					+'<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(66);">麒麟玉</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(67);">世纪玉石</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(68);">丝路花雨</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(69);">亚马逊</a></li>');
				}else if(id=="7"){
					$("#xilie").append('<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(71);">英伦风尚英伦温莎</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(72);">英伦风尚英格兰</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(73);">英伦风尚公共配件</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(74);">墨刻</a></li>'
					+'<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(75);">墨意</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(76);">阿凡达</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(77);">抱玉朴</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(78);">高尔夫</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(79);">花间集</a></li>'
					+'<li><a href="javascript:void(0);" onMouseOver="javascript:chicui(710);">石之韵</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(711);">问叶</a></li><li><a href="javascript:void(0);" onMouseOver="javascript:chicui(712);">雪白之恋</a></li>');
				}
				search(1);
				$("#nav>ul>li").mouseover(function(){
         			$("#nav>ul>li").each(function(i){
             			$(this).removeClass("h_nav_over");
         		});
        	 		$(this).addClass("h_nav_over");
     			}).mouseout(function(){
        			 $(this).addClass("h_nav_over");
     			});
			}
      </script>   
      <input type="hidden" id="dalieid"/>
        <div class="content-con j_categoryContent" style="display: none;">
        <div class="pannel-con j_CategoryMenuPannel">
        </div>
        </div>
        </div>
        <section class="recomanded_product">
            <div class="container custome_container">
                <div class="re_tittle">
                     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                        	 <div id="nav">
      							<ul id="xilie">
         							  	<li><a class="disabled" href="javascript:;">全部产品</a></li>
      							</ul>
 							</div>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div>
                  <div class="cdiv" id="chicuidiv" style="display: none;" align="center">
      					<input class="xiandiv" onMouseOver="javascript:addcolor(this);" onMouseOut="javascript:removecolor(this);" type="text" value="1600*300"/>
      					<input class="xiandiv" type="text" value="600*300"/>
      					<input class="xiandiv" type="text" value="600*300"/>
      			</div>
      			<script type="text/javascript">
      				function addcolor(a) {
						$(a).css("color","black");
					}
					function removecolor(a) {
						$(a).css("color","#b48147");
					}
				function chicui(id) {
					$.ajax({
			             type: "post",
			             url: "xinxi/selectchicui.do",
			             data:{id:id},
			             dataType: "json",
			             success: function(data){
			             	var list=data.message;
			             	$("#chicuidiv").html("");
			             	for ( var int = 0; int < list.length; int++) {
								$("#chicuidiv").append('<input class="xiandiv" id="input'+id+'" name="'+id+'" onclick="javascript:dianji('+id+')" onMouseOver="javascript:addcolor(this);" onMouseOut="javascript:removecolor(this);" type="text" value="'+list[int]+'"/>&nbsp;&nbsp;&nbsp;');	    
							}
			             	document.getElementById("chicuidiv").style.display="block";
			             },
			         });
				}
				function dianji(id) {
					$("#chicuiuid").val(id);
					search(1);
				}
      			</script>
      			<input type="hidden" id="chicuiuid"/>
                <div class="row" id="xiang">
                    <div class="cpms" >
						<div class="cpms_left">
	   						<a href="/index/productdetail/id/382.html"> <div class="cpms_img1_box"><img src="img/recommended-product/re-product-2.jpg" alt="" class="cpms_img1"></div></a>
							<a href="/index/productdetail/id/382.html"><div class="cpms_img2_box"><img src="img/recommended-product/re-product-1.jpg" alt="" class="cpms_img2" width="288" height="143" data-margin-top="71" data-margin-left="0" data-width="289" data-height="144" style="margin-top: 71px; visibility: visible; margin-left: 0px; width: 289px; height: 144px;"></div></a>
						</div>
						<div class="cpms_right">
							<h2>126EJC315TM3P</h2>
							<p class="cpms_ms">豹纹，是时尚圈经久不衰的元素，深受设计师与时尚人士青睐，磁砖与豹纹华丽碰撞，完美诠释最原始的野性和性感妩媚之美。</p>
							<p class="cpms_xh">型号：126EJC315TM3P <br> 规格：600x1200</p>
							<span><input type="button" class="btn btn-default" value="查看详情"/></span>
						</div>
					<div style="clear:both;"></div>
					</div>
					
					
                </div>
                <div style="text-align:right;">
						<ul class="pagination" id="pagination" style="float:inherit;">
						</ul>
				</div>
            </div>
        </section>
        <footer class="footer_area">
            <div class="bqsy">
            	<div class="bqsy_box">
			<h2>版权所有：广东金牌陶瓷有限公司</h2>
			<div style="float: left; height: 55px;line-height: 55px; width: 55px;padding-top: 22px;">
				<!-- <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260474017'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1260474017%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script> -->
				<span id="cnzz_stat_icon_1260474017">
				<a href="http://www.cnzz.com/stat/website.php?web_id=1260474017" target="_blank" title="站长统计">
				<img border="0" hspace="0" vspace="0" src="http://icon.cnzz.com/img/pic.gif"></a>
				</span>
				<script src=" http://s11.cnzz.com/z_stat.php?id=1260474017&amp;show=pic" type="text/javascript"></script>
				<script src="http://c.cnzz.com/core.php?web_id=1260474017&amp;show=pic&amp;t=z" charset="utf-8" type="text/javascript"></script>
			</div>
			<img style=" margin: 0 20px 0 45px;" class="img" src="img/jpindex_85.jpg" alt="">
			<div class="ckdt">
				<h5>ASSRESS</h5>
				<span><a href="#">查看地图</a></span>                    
			</div>
			<p style="width: 190px;">营销中心：佛山市禅城区南庄镇华夏陶瓷博览城陶博大道36座</p>
		</div>
		</div>
        </footer>
  </body>
</html>
