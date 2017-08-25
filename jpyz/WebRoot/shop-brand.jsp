<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shop-brand.jsp' starting page</title>
    
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
        <!-- Bootstrap Select -->
        <link href="vendors/bootstrap-selector/css/bootstrap-select.min.css" rel="stylesheet">
        <!-- Camera Slider -->
        <link href="vendors/camera-slider/css/camera.css" rel="stylesheet">
        <!-- Animate css -->
        <link href="vendors/animate-css/animate.css" rel="stylesheet">
        <!-- jQuery UI -->
        <link href="vendors/jquery-ui/css/jquery-ui.css" rel="stylesheet">
        
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
                            <li><a href="#"><i class="lnr lnr-user"></i> My Account</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container -->
            </nav>
        </header>
        <!--==========Main Menu Area==========-->
        
        <!--==========Banner area==========-->
        <section class="banner_area">
            <div class="banner_tittle">
                <h3>品牌:金牌亚洲</h3>
            </div>
            <div class="banner_page_ling">
                <a href="index.html">Home</a>
                <i class="lnr lnr-chevron-right"></i>
                <a href="index.html">Category</a>
                <i class="lnr lnr-chevron-right"></i>
                <a href="index.html">All Category</a>
            </div>
        </section>
        <!--==========End Slider area==========-->
        
        <!--==========Men Clothing area==========-->
        <section class="men_clothing_area">
            <div class="container custome_container">
                <div class="row">
                   <div class="col-md-3">
                        <div class="product_sidebar_widget_inner">
                            <div class="s_widget s_widget_categories">
                               <div class="s_widget_tittle">
                                   <h4>产品类别</h4>
                               </div>
                                <ul>
                                    <li><a href="#"><i class="lnr lnr-user"></i>抛釉砖</a></li>
                                    <li><a href="#"><i class="lnr lnr-shirt"></i>大理石瓷砖</a></li>
                                    <li><a href="#"><i class="lnr lnr-phone"></i>现代仿古砖</a></li>
                                    <li><a href="#"><i class="lnr lnr-printer"></i>微晶石</a></li>
                                    <li><a href="#"><i class="lnr lnr-file-empty"></i>抛光砖</a></li>
                                    <li><a href="#"><i class="lnr lnr-star"></i>仿古砖</a></li>
                                    <li><a href="#"><i class="lnr lnr-apartment"></i>瓷片</a></li>
                                </ul>
                            </div>
                            <div class="s_widget s_widget_brand">
                               <div class="s_widget_tittle">
                                   <h4>品牌/公司</h4>
                               </div>
                                <ul>
                                    <li><a href="#">奥翔</a></li>
                                    <li class=active><a href="#">金牌</a></li>
                                </ul>
                            </div>
                            <div class="s_widget s_widget_price_range">
                               <div class="s_widget_tittle">
                                   <h4>价格范围</h4>  
                               </div>
                                <div class="range_slider">
                                    <div id="slider-range"></div>
                                    <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
                                </div>
                            </div>
                            <div class="s_widget s_widget_add">
                               <img src="img/add_image/sidebar_add.jpg" alt="">
                            </div>
                            <div class="s_widget s_widget_t_product">
                               <div class="s_widget_tittle">
                                   <h4>热门产品</h4>
                               </div>
                               <div class="t_product_inner">
                                   <div class="item_t_product">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object" src="img/product/t-product/t-product-1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#"><h4>天然大理石</h4></a>
                                                <h5>$34.50</h5>
                                            </div>
                                        </div>
                                   </div>
                                   <div class="item_t_product">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object" src="img/product/t-product/t-product-2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#"><h4>天然大理石</h4></a>
                                                <h5>$34.50</h5>
                                            </div>
                                        </div>
                                   </div>
                                   <div class="item_t_product">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object" src="img/product/t-product/t-product-3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#"><h4>天然大理石</h4></a>
                                                <h5>$34.50</h5>
                                            </div>
                                        </div>
                                   </div>
                                   <div class="item_t_product">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object" src="img/product/t-product/t-product-4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#"><h4>天然大理石</h4></a>
                                                <h5>$34.50</h5>
                                            </div>
                                        </div>
                                   </div>
                                   <div class="item_t_product">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object" src="img/product/t-product/t-product-5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <a href="#"><h4>天然大理石</h4></a>
                                                <h5>$34.50</h5>
                                            </div>
                                        </div>
                                   </div>
                               </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                      <div class="microsoft_brand_area">
                          <img src="img/logo.jpg" alt="">
                          <p>金牌亚洲磁砖，隶属于广东金牌陶瓷有限公司，始创于2004年，凭借强大的综合实力和不断创新的精神，树立一个又一个行业标杆，成为中国建陶行业的高端磁砖品牌之一。
							企业生产实力雄厚，斥资8亿元在广东佛山三水白坭工业园建造大型生产基地，是全球最大的釉面内墙砖生产基地之一。同时，首期投巨资的R&D研发中心，引进世界一流的陶瓷现代化生产设备，配备7800T大吨位压机多台与意大利西斯特姆8通道喷墨打印机，自主研发1200吨喷雾干燥塔，并拥有行业最先进的408米长的自动宽体燃气辊道窑8条线；釉面墙地砖日产量达17000平方米/线，瓷片日产量25000平方米/线。
							金牌亚洲磁砖凭借核心工艺和自主研发的优势，始终领军行业。产品全系列品类齐全，高值产品丰富。大理石磁砖、微晶石、全抛釉、仿古砖、抛光砖、瓷片、K晶砖等市场主流的品类，各种规格，各种花色，应有尽有。其中，天然大理石磁砖系列，实现全通体效果，以900x900mm大规格，打破行业规格传统，终结传统瓷砖表面单调与实际应用狭窄的时代，真正实现一石多面、随心切割铺贴等装饰效果。未来，金牌亚洲呈现更多技术驱动型产品，上线更大规格瓷砖，为瓷砖产品的开发和应用带来新的可能。</p>
                      </div>
                       <div class="short_by_listing_area">
                           <div class="short_by_left">
                               <h2><i class="lnr lnr-funnel"></i>排序:</h2>
                                <select class="selectpicker">
                                    <option>最新上市</option>
                                </select>
                           </div>
                           <div class="middle_bar">
                               <a class="active" href="#"><i class="fa fa-bars" aria-hidden="true"></i></a>
                               <a href="#"><i class="fa fa-th" aria-hidden="true"></i></a>
                           </div>
                           <div class="item_right">
                               <h2>Item Show:</h2>
                                <select class="selectpicker">
                                    <option>60</option>
                                    <option>40</option>
                                    <option>40</option>
                                </select>
                           </div>
                       </div>
                        <div class="men_clothing_add">
                            <img src="img/add_image/home-2-add.jpg" alt="">
                        </div>
                        <div class="men_clothing_tittle">
                            <h2>Men Clothing</h2>
                        </div>
                        <div class="men_clothing_product_inner row">
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-1.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-2.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-2.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-3.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-3.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-4.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-4.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-5.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-5.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-6.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-6.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-5.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="men_clothing_add add_space">
                            <img src="img/add_image/home-2-add.jpg" alt="">
                        </div>
                        <div class="men_clothing_tittle">
                            <h2>Men Clothing</h2>
                        </div>
                        <div class="men_clothing_product_inner row">
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-1.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-2.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-2.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-3.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-3.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-4.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-4.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-5.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-5.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-6.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-6.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-5.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-1.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-2.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-2.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-3.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6">
                                <div class="men_clothing_product_item">
                                    <a class="men_item_image" href="#">
                                        <img src="img/product/men-product/men-product-3.jpg" alt="">
                                        <img class="secondary_img" src="img/product/men-product/men-product-4.jpg" alt="">
                                    </a>
                                    <div class="men_item_content">
                                        <a href="#"><h3>Old Style Narrow T-shirt</h3></a>
                                        <h4>US $120.90</h4>
                                        <div class="favourite_icon">
                                           <a class="active" href="#"><i class="lnr lnr-cart"></i></a>
                                           <a href="#"><i class="lnr lnr-heart"></i></a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <nav aria-label="Page navigation">
                            <ul class="pagination product_pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <i class="lnr lnr-chevron-left"></i>
                                    </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">...</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <i class="lnr lnr-chevron-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!--==========End Men Clothing area==========-->
        
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
        <script src="vendors/wow/wow.min.js"></script>
        
        <script src="js/theme.js"></script>
  </body>
</html>
