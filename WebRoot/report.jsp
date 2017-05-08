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
    <title>每日签到</title>
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
			<p>每日签到</p>
	    </header>
	    
	    <div id="main" class="mui-clearfix">
	    	<div class="rebanner"></div>
	    	<div class="reinfor clearfloat box-s">
	    		<div class="tu fl clearfloat">
	    			<img src="img/touxiang.png"/>
	    		</div>
	    		<div class="middle clearfloat fl">
	    			<p class="tel">13655555555</p>
	    			<p class="hyuan">普通会员</p>
	    			<p class="jfen">当前累积：<span>200</span>积分</p>
	    			<input type="button" name="" id="" value="点击签到" />
	    		</div>
	    		<div class="right clearfloat">
	    			<p class="ta-c qdao">连续签到</p>
	    			<p class="daynum ta-c">25</p>
	    			<p class="qdao ta-c">天</p>
	    		</div>
	    	</div>
	    	<div class="rerule clearfloat box-s">
	    		<ul>
	    			<li>活动规则</li>
	    			<li>1.登录之后才能签到；</li>
	    			<li>2.每次登录后点击签到按钮才能送积分；</li>
	    			<li>3.每天只送一次，积分为5分；</li>
	    			<li>4.积分自领取之日起1年内有效;</li>
	    			<li>5.积分可兑换优惠券；</li>
	    			<li>6.分享可得更多积分；</li>
	    		</ul>
	    	</div>
	    </div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
