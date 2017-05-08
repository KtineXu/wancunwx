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
    <title>线下加盟店详情</title>
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
			<p>线下加盟店详情</p>
	    </header>
	    <div id="main" class="mui-clearfix">
	    	<div class="join-banner"></div>
	    	<div class="jd-top clearfloat box-s">
	    		<p class="tit">XXX区体验店</p>
	    		<p class="tel clearfloat"><span class="bt fl">服务电话：</span><span class="num fl">0556-000-00000</span></p>
				<p class="tel clearfloat"><span class="bt fl">营业时间：</span><span class="num fl">9:00-21:00（周五-周日21:00）</span></p>
				<p class="tel clearfloat"><span class="bt fl">门店地址：</span><span class="num fl">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX购物中心</span></p>
	    	</div>
	    	<div class="health clearfloat">
				<div class="htop clearfloat">
					商家展示
				</div>
			</div>
			<div class="join-business clearfloat box-s">
				<ul>
					<li>
						<a href="#">
							<img src="upload/21.png"/>
						</a>
					</li>
					<li>
						<a href="#">
							<img src="upload/21.png"/>
						</a>
					</li>
					<li>
						<a href="#">
							<img src="upload/21.png"/>
						</a>
					</li>
				</ul>
			</div>
			<div class="health clearfloat">
				<div class="htoptwo clearfloat">
					商品展示
				</div>
			</div>
			<div class="splist-bg clearfloat">
				<div class="splist clearfloat">
					<ul>
						<li>
							<a href="#">
								<img src="upload/21.png"/>
								<p>性感女装夏装</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="upload/21.png"/>
								<p>性感女装夏装</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="upload/21.png"/>
								<p>性感女装夏装</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="upload/21.png"/>
								<p>性感女装夏装</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="upload/21.png"/>
								<p>性感女装夏装</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="upload/21.png"/>
								<p>性感女装夏装</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
			
	    </div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
