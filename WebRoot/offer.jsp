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
    <title>特价促销</title>
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
			<p>特价促销</p>
	    </header>
	    <div id="main" class="mui-clearfix">
	    	<div class="offer-banner"></div>
	    	<div class="offer-top clearfloat box-s">
	    		<div class="slider one-time offer-list-top">
					<div><a href="#" class="cur">推荐</a></div>
					<div><a href="#">藏香猪</a></div>
					<div><a href="#">雏鹰黑猪</a></div>
					<div><a href="#">孝心礼包</a></div>
					<div><a href="#">过节大礼包一</a></div>
					<div><a href="#">过节大礼包二</a></div>
					<div><a href="#">过节大礼包三</a></div>
				</div>
	    		<span onClick="toshare()"><i class="iconfont icon-xiangxia"></i></span>
	    	</div>
	    	
	    	<div class="am-share">
			  <h3 class="am-share-title">特价促销</h3>
			  <div class="am-share-sns box-s">
			    <div class="am-list">
			    	<div class="offer-ctent clearfloat">
			    		<ul>
			    			<li><a href="#">过节大礼包一</a></li>
			    			<li><a href="#">过节大礼包二</a></li>
			    		</ul>
			    	</div>
			    </div>
			  </div>
			  <div class="am-share-footer"><button class="share_btn">关闭</button></div>
			</div>	    	
	    	
	    	
	    	<div class="offer-list clearfloat">
	    		<div class="list clearfloat box-s">
	    			<div class="tu">
	    				<img src="upload/rou1.jpg"/>
	    			</div>
	    			<div class="ctent clearfloat">
	    				<p class="tit">黑猪<span style="margin-left: 10px;">猪肚</span></p>
	    				<p class="price"><span>¥</span>118.00</p>
	    				<p class="yprice">原价：¥69.9元</p>
	    			</div>
	    			<a href="pro-detail.html" class="offer-btn">
	    				立即购买
	    			</a>
	    		</div>
				<div class="list clearfloat box-s">
					<div class="tu">
						<img src="upload/rou1.jpg"/>
					</div>
					<div class="ctent clearfloat">
						<p class="tit">黑猪<span style="margin-left: 10px;">猪肚</span></p>
						<p class="price"><span>¥</span>118.00</p>
						<p class="yprice">原价：¥69.9元</p>
					</div>
					<a href="pro-detail.html" class="offer-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat box-s">
					<div class="tu">
						<img src="upload/rou1.jpg"/>
					</div>
					<div class="ctent clearfloat">
						<p class="tit">黑猪<span style="margin-left: 10px;">猪肚</span></p>
						<p class="price"><span>¥</span>118.00</p>
						<p class="yprice">原价：¥69.9元</p>
					</div>
					<a href="pro-detail.html" class="offer-btn">
						立即购买
					</a>
				</div>
				<div class="list clearfloat box-s">
					<div class="tu">
						<img src="upload/rou1.jpg"/>
					</div>
					<div class="ctent clearfloat">
						<p class="tit">黑猪<span style="margin-left: 10px;">猪肚</span></p>
						<p class="price"><span>¥</span>118.00</p>
						<p class="yprice">原价：¥69.9元</p>
					</div>
					<a href="pro-detail.html" class="offer-btn">
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
