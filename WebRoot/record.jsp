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
    <title>兑换记录</title>
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
			<p>兑换记录</p>
	    </header>
	    
	    <!--这里是在没有任何兑换商品的提示页面-->
	    
	    <div id="main" class="mui-clearfix">
	    	<div class="norecord clearfloat">
	    		<img src="img/record.png"/>
	    		<p>还没有您的记录哦~</p>
	    		<p>快进行第一次兑换吧！</p>
	    		<a href="integral.html">
	    			去兑换
	    		</a>
	    	</div>
	    </div>
	    
	    <!--以下是已经兑换过后的商品列表展示-->
	    
	    <!--<div id="main" class="mui-clearfix">
	    	<div class="integral-list clearfloat box-s">
				<div class="list clearfloat">
					<div class="tu">
						<img src="upload/12.jpg"/>
						<span class="opa5"></span>
						<p>苏珀尔炒锅</p>
					</div>
					<p class="price ta-c">原价￥118.00</p>
					<p class="duihuan ta-c">
						<span>500</span>
						积分兑换
					</p>
					<a href="integral-detail.html" class="dh-btn dh-btn1">
						已兑换
					</a>
				</div>
				<div class="list clearfloat">
					<div class="tu">
						<img src="upload/12.jpg"/>
						<span class="opa5"></span>
						<p>苏珀尔炒锅</p>
					</div>
					<p class="price ta-c">原价￥118.00</p>
					<p class="duihuan ta-c">
						<span>500</span>
						积分兑换
					</p>
					<a href="integral-detail.html" class="dh-btn dh-btn1">
						已兑换
					</a>
				</div>
			</div>
			<div class="integral-list clearfloat box-s">
				<div class="list clearfloat">
					<div class="tu">
						<img src="upload/12.jpg"/>
						<span class="opa5"></span>
						<p>苏珀尔炒锅</p>
					</div>
					<p class="price ta-c">原价￥118.00</p>
					<p class="duihuan ta-c">
						<span>500</span>
						积分兑换
					</p>
					<a href="integral-detail.html" class="dh-btn dh-btn1">
						已兑换
					</a>
				</div>
				<div class="list clearfloat">
					<div class="tu">
						<img src="upload/12.jpg"/>
						<span class="opa5"></span>
						<p>苏珀尔炒锅</p>
					</div>
					<p class="price ta-c">原价￥118.00</p>
					<p class="duihuan ta-c">
						<span>500</span>
						积分兑换
					</p>
					<a href="integral-detail.html" class="dh-btn dh-btn1">
						已兑换
					</a>
				</div>
			</div>
	    </div>-->
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
