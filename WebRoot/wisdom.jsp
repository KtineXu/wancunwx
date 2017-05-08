<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>智慧养老</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <script src="js/rem.js"></script> 
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/page.css"/>
    <link rel="stylesheet" type="text/css" href="css/all.css"/>
    <link rel="stylesheet" type="text/css" href="css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/loading.css"/>
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<script type="text/javascript">
	$(window).load(function(){
		$(".loading").addClass("loader-chanage")
		$(".loading").fadeOut(300)
	})
</script>
</head>
<!--loading页开始-->
<div class="loading">
	<div class="loader">
        <div class="loader-inner pacman">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
        </div>
	</div>
</div>
<!--loading页结束-->
	<body>
		<header class="mui-bar mui-bar-nav report-header box-s" id="header">
			<a href="javascript:history.go(-1)"><i class="iconfont icon-fanhui fl"></i></a>
			<p>智慧养老</p>
	    </header>
	    <div id="main" class="mui-clearfix">
	    	<div class="offer-banner"></div>
	    	<div class="offer-top clearfloat box-s">
	    		<div class="offer-list-top clearfloat">
	    			<div class="slider one-time">
						<div><a href="#" class="cur">健康监测</a></div>
						<div><a href="#">理疗产品</a></div>
						<div><a href="#">体育用品</a></div>
						<div><a href="#">数码产品</a></div>
						<div><a href="#">健康监测</a></div>
						<div><a href="#">理疗产品</a></div>
						<div><a href="#">体育用品</a></div>
						<div><a href="#">数码产品</a></div>
					</div>
	    		</div>	    		
	    		<span class="fl" onClick="toshare()"><i class="iconfont icon-xiangxia"></i></span>
	    	</div>
	    	
	    	<div class="am-share">
			  <h3 class="am-share-title">智慧养老</h3>
			  <div class="am-share-sns box-s">
			    <div class="am-list">
			    	<div class="offer-ctent clearfloat">
			    		<ul>
			    			<li><a href="#">养老惠产品</a></li>
			    			<li><a href="#">养老惠产品</a></li>
			    			<li><a href="#">养老惠产品</a></li>
			    			<li><a href="#">养老惠产品</a></li>
			    			<li><a href="#">养老惠产品</a></li>
			    			<li><a href="#">养老惠产品</a></li>
			    			<li><a href="#">养老惠产品</a></li>
			    			<li><a href="#">养老惠产品</a></li>
			    		</ul>
			    	</div>
			    </div>
			  </div>
			  <div class="am-share-footer"><button class="share_btn">关闭</button></div>
			</div>	
			
			<div class="wisdom clearfloat">
				<div class="list clearfloat fl">
					<div class="tu clearfloat">
						<span></span>
						<img src="upload/26.jpg"/>
					</div>
					<p class="tit">电子血压计EW3106</p>
					<p class="price">￥239.00<span>原价：299.00</span></p>
					<a href="pro-detail.html" class="offer-btn offertwo-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat fl">
					<div class="tu clearfloat">
						<span></span>
						<img src="upload/26.jpg"/>
					</div>
					<p class="tit">电子血压计EW3106</p>
					<p class="price">￥239.00<span>原价：299.00</span></p>
					<a href="pro-detail.html" class="offer-btn offertwo-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat fl">
					<div class="tu clearfloat">
						<span></span>
						<img src="upload/26.jpg"/>
					</div>
					<p class="tit">电子血压计EW3106</p>
					<p class="price">￥239.00<span>原价：299.00</span></p>
					<a href="pro-detail.html" class="offer-btn offertwo-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat fl">
					<div class="tu clearfloat">
						<span></span>
						<img src="upload/26.jpg"/>
					</div>
					<p class="tit">电子血压计EW3106</p>
					<p class="price">￥239.00<span>原价：299.00</span></p>
					<a href="pro-detail.html" class="offer-btn offertwo-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat fl">
					<div class="tu clearfloat">
						<span></span>
						<img src="upload/26.jpg"/>
					</div>
					<p class="tit">电子血压计EW3106</p>
					<p class="price">￥239.00<span>原价：299.00</span></p>
					<a href="pro-detail.html" class="offer-btn offertwo-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat fl">
					<div class="tu clearfloat">
						<span></span>
						<img src="upload/26.jpg"/>
					</div>
					<p class="tit">电子血压计EW3106</p>
					<p class="price">￥239.00<span>原价：299.00</span></p>
					<a href="pro-detail.html" class="offer-btn offertwo-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat fl">
					<div class="tu clearfloat">
						<span></span>
						<img src="upload/26.jpg"/>
					</div>
					<p class="tit">电子血压计EW3106</p>
					<p class="price">￥239.00<span>原价：299.00</span></p>
					<a href="pro-detail.html" class="offer-btn offertwo-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat fl">
					<div class="tu clearfloat">
						<span></span>
						<img src="upload/26.jpg"/>
					</div>
					<p class="tit">电子血压计EW3106</p>
					<p class="price">￥239.00<span>原价：299.00</span></p>
					<a href="pro-detail.html" class="offer-btn offertwo-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat fl">
					<div class="tu clearfloat">
						<span></span>
						<img src="upload/26.jpg"/>
					</div>
					<p class="tit">电子血压计EW3106</p>
					<p class="price">￥239.00<span>原价：299.00</span></p>
					<a href="pro-detail.html" class="offer-btn offertwo-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat fl">
					<div class="tu clearfloat">
						<span></span>
						<img src="upload/26.jpg"/>
					</div>
					<p class="tit">电子血压计EW3106</p>
					<p class="price">￥239.00<span>原价：299.00</span></p>
					<a href="pro-detail.html" class="offer-btn offertwo-btn">
						立即购买
					</a>
				</div>
			</div>
	    </div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
	<script src="slick/slick.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/psong.js" ></script>
	<script type="text/javascript">
		$('.one-time').slick({
		  dots: true,
		  infinite: false,
		  speed: 300,
		  slidesToShow: 4,
		  touchMove: false,
		  slidesToScroll: 1
		});
	</script>
</html>
