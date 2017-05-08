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
    <title>订单跟踪</title>
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
			<p>订单跟踪</p>
	    </header>
	    <div id="main" class="mui-clearfix">
	    	<div class="track clearfloat">
	    		<div class="warning clearfloat box-s">
	    			<div class="ctent clearfloat box-s">
	    				亲爱的用户，由于标准目前存在不确定性，部分商品会无法正常发货，请您耐心等候。
	    			</div>
	    			<p class="num">订单号：123456789121213</p>
	    		</div>
	    		<div class="state clearfloat box-s">
	    			<ul>
	    				<li>快递状态：已签收</li>
	    				<li>快递公司：成都中通</li>
	    				<li>快递单号：46646464646464646</li>
	    				<li>快递电话：0556-0000000</li>
	    			</ul>
	    		</div>
	    		<div class="process clearfloat box-s">
	    			<div class="list clearfloat">
	    				<i class="iconfont dian"></i>
	    				<div class="you clearfloat">
	    					<p class="tit">XXXXXX 的派件已签收，感谢您使用XX快递！</p>
	    					<p class="time">2016-05-14 16:55</p>
	    				</div>
	    			</div>
	    			<div class="list clearfloat">
	    				<i class="iconfont dian"></i>
	    				<div class="you clearfloat">
	    					<p class="tit">XXXXX 的 XXX 正在派件</p>
	    					<p class="time">2016-05-14 16:55</p>
	    				</div>
	    			</div>
	    			<div class="list clearfloat">
	    				<i class="iconfont dian"></i>
	    				<div class="you clearfloat">
	    					<p class="tit">快件离开 XXXXX 已发往 XXXXX</p>
	    					<p class="time">2016-05-14 16:55</p>
	    				</div>
	    			</div>
	    			<div class="list clearfloat">
	    				<i class="iconfont dian"></i>
	    				<div class="you clearfloat">
	    					<p class="tit">快件离开 XXXX 已发往 XXXXX</p>
	    					<p class="time">2016-05-14 16:55</p>
	    				</div>
	    			</div>
	    			<div class="list clearfloat">
	    				<i class="iconfont dian"></i>
	    				<div class="you clearfloat">
	    					<p class="tit">快件已到达 XXXXX 上一站是 XXXXX</p>
	    					<p class="time">2016-05-14 16:55</p>
	    				</div>
	    			</div>
	    		</div>
	    	</div>
	    </div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
