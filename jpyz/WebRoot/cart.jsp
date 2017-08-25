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
    
    <title>购物车页面</title>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <link rel="icon" href="img/favicon.png" type="image/x-icon" />
	<!-- fonts -->
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,300italic,500,400italic,700,900' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700' rel='stylesheet' type='text/css'>
        <link href="vendors/Linearicons/style.css" rel="stylesheet">
        <link href="vendors/fontawesome/css/font-awesome.min.css" rel="stylesheet">
        <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
        <script type="text/javascript" src="js/loginout.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link href="vendors/camera-slider/css/camera.css" rel="stylesheet">
        <link href="vendors/animate-css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script type="text/javascript" src="js/jqPaginator.min.js"></script>
        <link href="vendors/jquery-ui/css/jquery-ui.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
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
		$.ajax({ 
				type : "POST", 
		        url : "xinxi/cartindex.do",  
		        data : {
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
				 $("#ajax-fenye tr").remove();
				//遍历list集合
				jQuery.each(list, function(i,item){
					$("#ajax-fenye").append('<tr>' 
                                    +'<td><img src="'+item.goodsrenderingimg+'" width="140px;" height="100px;" alt=""></td>'
                                    +'<td style="width:350px;">'+item.description+'</td>'
                                    +'<td>'
                                    	+'<div class="quantity">'
                                    	+'<div class="quantity-select">'
													+'<input type="text" value="'+item.number+'" style="width:90px;text-align:center;"/>'
										+'</div>'
										+'</div>'
									+'</td>' 
                                    +'<td>'+item.specifications+'&nbsp;&nbsp;&nbsp;<br/>'+item.goodsno+'</td>'
                                    +'<td>'+item.goodsapply+'</td>'
                                    +'<td>45210（件）</td>'
                                    +'<td><a href="javascript:void(0);" onclick="javascript:deletecart('+item.id+')">删除</a></td>' 
                                +'</tr> ');
	            }); 
			},
		});
	}
        </script>
  </head>
  <body>
  <script type="text/javascript">
  	function deletecart(id) {
		$.ajax({ 
				type : "POST", 
		        url : "xinxi/updatecart.do",  
		        data : {
		        	id:id
		        }, 
		        dataType:'json', 
		        success : function(data) {
					if(data.message=="succ"){
						alert("删除成功");
						location=location;
					}else if(data.message=="err"){
						alert("删除失败");
					}
				},
			});
		}
  </script>
    <!--==========First Header==========-->
        <div class="first_header">
            <div class="container custome_container">
                <div class="live_chat_area pull-left">
                    <a href="tencent://message/?uin=1254151112&Site=sc.chinaz.com&Menu=yes"><i class="lnr lnr-bubble">在线QQ</i></a>
                    <a href="#"><i class="lnr lnr-envelope"></i>客服电话:400-8632-882</a>
                </div>
                <div class="live_chat_area pull-right">
                	<a href="javascript:void(0);"><i class="lnr"></i>本人账户：<%=user.getUsername() %></a>
                	<a href="javascript:void(0);" onclick="javascript:loginout();">退出登录</a>
                </div>
            </div>
        </div>
        <div class="logo_area">
            <div class="container custome_container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="website_logo">
                            <a href="index.jsp"><img src="img/logo.png" alt="" style="padding-top: 9"></a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="find_item_inner">
                            <input type="text" placeholder="请在这里搜索">
                            <a class="find_button" href="#">查询</a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="cart_area">
                         <!--    <div class="wishlist">
                                <i class="lnr lnr-heart"></i>
                                <h5>我的收藏</h5>
                            </div> -->
                            <div class="cart">
                                <i class="lnr lnr-cart"></i>
                                <h5>购物车</h5>
                                <span id="countid">7</span>
                            </div>
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
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="index.jsp">首页</a></li>
                            <li><a href="cart.jsp">购物车</a></li>
                            <li><a href="index">商店</a></li>
                            <li><a href="#">关于</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container -->
            </nav>
        </header>
            <div class="container">
                <div class="shopping_cart_inner">
                    <div class="table-responsive"> 
                        <table class="table"> 
                            <thead> 
                                <tr> 
                                    <th>产品效果图</th> 
                                    <th>产品描述</th> 
                                    <th>产品数量</th> 
                                    <th>产品规格型号</th> 
                                    <th>适用场景</th> 
                                    <th>剩余库存</th> 
                                    <th>操作</th> 
                                </tr> 
                            </thead> 
                            <tbody id="ajax-fenye"> 
                               
                            </tbody> 
                        </table> 
                         <div style="text-align:right;">
								<ul class="pagination" id="pagination">
								</ul>
							</div>
						 <script>
						$('.value-plus').on('click',function() {
									var divUpd = $(this).parent()
											.find('.value'), newVal = parseInt(
											divUpd.text(), 10) + 1;
									divUpd.text(newVal);
								});

						$('.value-minus').on('click',function() {
									var divUpd = $(this).parent()
											.find('.value'), newVal = parseInt(
											divUpd.text(), 10) - 1;
									if (newVal >= 1)
										divUpd.text(newVal);
								});
					</script>
                    </div>
                </div>
                <div class="total_price_area">
                   <!--  <h3><span>总价格</span>$298.00</h3> -->
                    <!-- <p>Shipping & taxes calculated at checkout</p> -->
                   <!--  <a class="cart_btn" href="#">结算</a> -->
                    <a class="cart_btn" href="index.jsp">退出</a>
                </div>
            </div>
        <!--==========End Shopping cart area==========-->
        
        <!--==========Footer area==========-->
        <footer class="footer_area" id="dibu">
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
        </footer>
  </body>
</html>
