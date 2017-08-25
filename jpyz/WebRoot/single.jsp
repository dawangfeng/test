<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.model.Usertable" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
	Usertable user=(Usertable)request.getSession().getAttribute("user");
	if(user==null){
		request.getRequestDispatcher("/login1.jsp").forward(request, response);
		return;
	}
%>

<!DOCTYPE html>
<html>
<head>
<title>商品详情页</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link rel="stylesheet" href="css/cpsj.css" type="text/css"></link>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css"media="screen" />
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<script src="js/imagezoom.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/simpleCart.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
 <link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/common.css" type="text/css"></link>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
	$(function(){ 
		var img=$("#imgid").val();
		var daimg=$("#daimgid").val();
		if(img.indexOf("-") > 0){
			$("#showbox").html("");
			var strs= new Array(); //定义一数组 
			strs=img.split("-");
			$("#showbox").append('<img src="'+daimg+'" width="400" height="400"/>');
			for ( var int = 0; int < strs.length; int++) {
				$("#showbox").append('<img src="'+strs[int]+'" width="400" height="400"/>');
			}
		}
	});
</script>
<body>
	 <!--==========First Header==========-->
        <div class="first_header">
            <div class="container custome_container">
                <div class="live_chat_area pull-left">
                    <a href="tencent://message/?uin=875529449&Site=sc.chinaz.com&Menu=yes"><i class="lnr lnr-bubble">在线QQ</i></a>
                    <a href="#"><i class="lnr lnr-envelope"></i>客服电话:400-8632-882</a>
                </div>
            </div>
        </div>
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
							<i class="gw-count"><%=request.getSession().getAttribute("count") %></i>
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
        <!--==========First Header==========-->
	<!-- single -->
	<div class="single">
		<div class="container">
			<div
				class="col-md-6 single-right-left animated wow slideInUp animated"
				data-wow-delay=".5s"
				style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
				<div class="grid images_3_of_2">
					<div class="flexslider">
						<!-- FlexSlider -->
						<script>
							// Can also be used with $(document).ready()
							$(window).load(function() {
								  var showproduct = {
		  								"boxid":"showbox",
		  								"sumid":"showsum",
		 								"boxw":400,//宽度,该版本中请把宽高填写成一样
		 								"boxh":400,//高度,该版本中请把宽高填写成一样
		 								"sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
		  								"sumh":60,//列表每个高度,该版本中请把宽高填写成一样
		  								"sumi":7,//列表间隔
		 								"sums":5,//列表显示个数
		 								"sumsel":"sel",
		  								"sumborder":1,//列表边框，没有边框填写0，边框在css中修改
		  								"lastid":"showlast",
		 								"nextid":"shownext"
		 								 };//参数定义	  
									 $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
							});
						</script>
						<!-- //FlexSlider-->
						<div style="width:600px; margin:0 auto;">
							<div id="showbox">
 	 							<img src="${xinxi.goodsrenderingimg }" width="400" height="400" />
  								<img src="${xinxi.goodstemplateimg }" width="400" height="400" />
						</div><!--展示图片盒子-->
			<div id="showsum"></div><!--展示图片里边-->
<p class="showpage">
  <a href="javascript:void(0);" id="showlast"> < </a>
  <a href="javascript:void(0);" id="shownext"> > </a>
</p>

</div>
	<input type="hidden" id="imgid" value="${xinxi.goodstemplateimg }"/>
	<input type="hidden" id="daimgid" value="${xinxi.goodsrenderingimg }"/>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div
				class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated"
				data-wow-delay=".5s"
				style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
				<h3>
				</h3>
					<table>
						<tr>
							<td style="color:#b48147;text-align: center;font-size: 20px;line-height: 3;">${xinxi.goodsno }</td>
						</tr>
						
						<tr>
							<td  style="line-height: 2;"><span style="color:#b48147;">产品类型：</span>${xinxi.categorychild.categorychildname }</td>
						</tr>
						<tr>
							<td  style="line-height: 2;"><span style="color:#b48147;">使用空间：</span>${xinxi.goodsapply }</td>
						</tr>
						<tr>
							
							<td  style="line-height: 2;"><span style="color:#b48147;">产品尺寸：</span>${xinxi.specifications }</td>
						</tr>
						<tr>
							<td style="font-size: 18px;"><span style="color:#b48147;">产品特点：</span></td>
						</tr>
						<tr>
							<td>${xinxi.description}</td>
						</tr>
					</table>
				<div class="occasional">
					<h5>数量 :</h5>
					<td class="invert">
						<div class="quantity">
							<div class="quantity-select">
								<div class="entry value-minus">&nbsp;</div>
								<div class="entry value">
									<span>1</span>
								</div>
								<div class="entry value-plus active">&nbsp;</div>
								<span>(库存&nbsp;:&nbsp;122311件)</span>
							</div>
							
						</div>
						</td>
					<script>
						$('.value-plus').on(
								'click',
								function() {
									var divUpd = $(this).parent()
											.find('.value'), newVal = parseInt(
											divUpd.text(), 10) + 1;
									divUpd.text(newVal);
								});

						$('.value-minus').on(
								'click',
								function() {
									var divUpd = $(this).parent()
											.find('.value'), newVal = parseInt(
											divUpd.text(), 10) - 1;
									if (newVal >= 1)
										divUpd.text(newVal);
								});
					</script>
					<script type="text/javascript">
						function addcart(id) {
							var number;
							number=$(".value").html();//获取数量
							if(number.length>10){
								number=$("#numberid").val();
							}
							 $.ajax({ 
								type : "POST", 
		        				url : "xinxi/addcart.do",  
		       	 				data : {
		        					id:id,
		        					number:number
		        				}, 
		        				dataType:'json', 
		       		 			success : function(data) {
		       		 				if(data.message=="succ"){
		       		 					var mymessage=confirm("添加成功，进入购物车？");  
   											 if(mymessage==true){  
        										location.href="cart.jsp"; 
    										}else if(mymessage==false)  
    											{  
        											location=location;
    											}  	
		       		 				}else if(data.message=="err"){
		       		 					alert("加入购物车失败!");
		       		 				}
								},
							}); 
						}
					</script>
					<input type="hidden" id="numberid" value="1">
					<div class="clearfix"></div>
				</div>
				<div class="occasion-cart">
					<a href="javascript:void(0);" onclick="javascript:addcart(${xinxi.goodsid})" class="item_add hvr-outline-out button2">加入购物车</a> 
					<a href="javascript:void(0);"  class="item_add hvr-outline-out button2">点击购买</a>
				</div>

			</div>
			<div class="clearfix"></div>

			<!-- <div class="bootstrap-tab animated wow slideInUp animated"
				data-wow-delay=".5s"
				style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;"> -->
				<div class="bs-example bs-example-tabs" role="tabpanel"
					data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#profile" role="tab"
							id="profile-tab" data-toggle="tab" aria-controls="profile">相关产品信息</a>
						</li>
						
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home"aria-labelledby="home-tab">
								<div>
									<img src="${xinxi.goodsrenderingimg}" alt="产品图片" width="100%"/>
									<img src="${xinxi.goodstemplateimg}" style="margin-top: 20px;"/>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!--==========Footer area==========-->
        <footer class="footer_area">
            <div class="bqsy">
            	<div class="bqsy_box">
			<h2>版权所有：广东金牌陶瓷有限公司</h2>
			<div style="float: left; height: 55px;line-height: 50px; width: 55px;">
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
        <!--==========End Footer area==========-->
</body>
</html>
