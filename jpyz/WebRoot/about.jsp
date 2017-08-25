<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'about.jsp' starting page</title>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="icon" href="img/favicon.png" type="image/x-icon" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- fonts -->
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,300italic,500,400italic,700,900' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700' rel='stylesheet' type='text/css'>
        
        <!-- Linearicons -->
        <link href="vendors/Linearicons/style.css" rel="stylesheet">
        <!-- fontawesome -->
        <link href="vendors/fontawesome/css/font-awesome.min.css" rel="stylesheet">
        
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <!-- Bootstrap Select -->
        <link href="vendors/bootstrap-selector/css/bootstrap-select.min.css" rel="stylesheet">
        <!-- Camera Slider -->
        <link href="vendors/camera-slider/css/camera.css" rel="stylesheet">
        <!-- Animate css -->
        <link href="vendors/animate-css/animate.css" rel="stylesheet">
        <!-- jQuery UI -->
        <link href="vendors/jquery-ui/css/jquery-ui.css" rel="stylesheet">
        <script src="vendors/hoverjs/modernizr.custom.97074.js"></script>
        
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="http://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
  </head>
  
  <body>
    <!--==========First Header==========-->
        <div class="first_header">
            <div class="container custome_container">
                <div class="live_chat_area pull-left">
                    <a href="tencent://message/?uin=1254151112&Site=sc.chinaz.com&Menu=yes"><i class="lnr lnr-bubble">在线QQ</i></a>
                    <a href="#"><i class="lnr lnr-envelope"></i>客服电话:400-8632-882</a>
                </div>
               <!--  <div class="language_area pull-right">
                    <select class="selectpicker">
                        <option>English</option>
                        <option>Bangla</option>
                        <option>Hindi</option>
                    </select>
                </div> -->
            </div>
        </div>
        <div class="logo_area">
            <div class="container custome_container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="website_logo">
                            <a href="index.html"><img src="img/logo.jpg" alt="" style="padding-top: 9"></a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="find_item_inner">
                            <input type="text" placeholder="请在这里搜索">
                            <select class="selectpicker">
                                <option>抛釉砖</option>
                                <option>大理石瓷砖</option>
                                <option>现代仿古砖</option>
                                <option>微晶石</option>
                                <option>抛光砖</option>
                                <option>仿古砖</option>
                                <option>瓷片</option>
                            </select>
                            <a class="find_button" href="#">查询</a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="cart_area">
                            <div class="wishlist">
                                <i class="lnr lnr-heart"></i>
                                <h5>我的收藏</h5>
                            </div>
                            <div class="cart">
                                <i class="lnr lnr-cart"></i>
                                <h5>购物车</h5>
                                <span>7</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--==========First Header==========-->
        <!--==========Main Menu Area==========-->
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
                            <li><a href="shop-brand.jsp">商店</a></li>
                            <li><a href="about.jsp">关于</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><i class="lnr lnr-user"></i>本人账户</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container -->
            </nav>
        </header>
        <!--==========Main Menu Area==========-->
        
        <!--==========Banner area==========-->
        <section class="banner_area">
            <div class="banner_tittle">
                <h3>联系</h3>
            </div>
            <div class="banner_page_ling">
                <a href="index.html">首页</a>
                <i class="lnr lnr-chevron-right"></i>
                <a href="index.html">类别</a>
                <i class="lnr lnr-chevron-right"></i>
                <a href="index.html">联系</a>
            </div>
        </section>
        <!--==========End Slider area==========-->
        
         
        <!--========== Get Touch Area ==========-->
        <section class="row m0 get_touch_area">
            <div class="container">
                <div class="row section_title">
                    <h3>保持联系</h3>
                </div>
                <div class="row get_touch">
                    <div class="col-sm-4 p0 get_touch_inner">
                        <div class="media item">
                            <div class="media-left item_left">
                                <a href="#">
                                    <img class="media-object" src="img/get_touch/location.png" alt="">
                                </a>
                            </div>
                            <div class="media-body item_right">
                                <a href="#">营销中心：佛山市禅城区南庄镇华夏陶瓷博览城陶博大道36座</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 p0 get_touch_inner">
                        <div class="media item">
                            <div class="media-left item_left">
                                <a href="#">
                                    <img class="media-object" src="img/get_touch/call.png" alt="">
                                </a>
                            </div>
                            <div class="media-body item_right" style="padding-top: 10px;">
                                <a href="http://themexy.com/demo/icommerce/+400-8632-882">400-8632-882</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 p0 get_touch_inner">
                        <div class="media item">
                            <div class="media-left item_left">
                                <a href="#">
                                    <img class="media-object" src="img/get_touch/message.png" alt="">
                                </a>
                            </div>
                            <div class="media-body item_right" style="padding-top: 10px;">
                                <a href="http://themexy.com/demo/icommerce/busines@financo.com">jpyz@financo.com</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row drop_message">
                    <div class="title">
                         <h3>留言</h3>
                    </div>
                    <form class="row form-inline contact_box" action="contact_process.php" method="post" id="contactForm">
                        <div class="form-group col-md-4">
                          <input type="text" class="form-control input_box" id="name" placeholder="全名*">
                        </div>
                        <div class="form-group col-md-4">
                          <input type="email" class="form-control input_box" id="email" placeholder="邮件地址 *">
                        </div>
                        <div class="form-group col-md-4">
                          <input type="text" class="form-control input_box" id="website" placeholder="你的网页">
                        </div>
                        <div class="form-group col-md-12">
                          <textarea class="form-control" rows="3" id="message" placeholder="请在这里输入..."></textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <button type="submit" value="Send Message" class="add_cart Send_Message"><i class="lnr lnr-location"></i>发送</button>
                         </div>
                    </form>
                    <div id="success">
                        <p>您成功发送！</p>
                    </div>
                    <div id="error">
                        <p>对不起的!发送失败。出毛病了！！</p>
                    </div>
                </div>
            </div>
        </section>
        <!--========== End Get Touch Area ==========--> 
        
        <!--==========Footer area==========-->
       <footer class="footer_area">
            <div class="main_footer">
                <div class="container custome_container">
                    <div class="row widget_inner">
                        <div class="col-md-3">
                            <div class="f_service_widget">
                                <div class="f_widget_tittle">
                                    <h3>客户服务</h3>
                                </div>
                                <p>
                                    	客户服务 <br class="break" />
                                    	交易服务协议 <br class="break" />
                                   	 参与我们的调查 <br class="break" />
                                    	组织和技术支持
                                </p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="f_newsletter_widget">
                                <div class="f_widget_tittle">
                                    <h3>订阅我们的时事通讯</h3>
                                </div>
                                <input type="email" placeholder="输入电子邮件地址">
                                <a class="f_subs_btn" href="#">现在订阅</a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="f_buy_widget">
                                <div class="f_widget_tittle">
                                    <h3>购买流程</h3>
                                </div>
                                <ul>
                                    <li><a href="#">创建账号</a></li>
                                    <li><a href="#">付款</a></li>
                                    <li><a href="#">付款方式</a></li>
                                    <li><a href="#">买家保障</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="f_promotion_widget">
                                <div class="f_widget_tittle">
                                    <h3>合作伙伴推广</h3>
                                </div>
                                <ul>
                                    <li><a href="#">合作伙伴关系</a></li>
                                    <li><a href="#">联盟计划</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="footer_business_card">
                        <div class="card_image row">
                            <img src="img/card/card.png" alt="">
                        </div>
                    </div> -->
                </div>
            </div>
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
        <!--==========End Footer area==========-->
        
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-1.12.3.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Bootstrap Select -->
        <script src="vendors/bootstrap-selector/js/bootstrap-select.min.js"></script>
        <!-- jquery easing -->
        <script src="js/jquery.easing.min.js"></script>
        <!-- Camera Slider -->
        <script src="vendors/camera-slider/js/camera.min.js"></script>
        <!-- jQuery UI -->
        <script src="vendors/jquery-ui/js/jquery-ui.js"></script>
        <!-- Hover js -->
        <script src="vendors/hoverjs/jquery.hoverdir.js"></script>
        <script src="vendors/wow/wow.min.js"></script>
        <!-- contact js -->
        <script src="js/jquery.form.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/contact.js"></script>
        
        <script src="js/theme.js"></script>
  </body>
</html>
