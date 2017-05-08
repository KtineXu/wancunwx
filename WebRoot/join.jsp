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
    <title>线下加盟店</title>
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
			<p>线下加盟店</p>
	    </header>
	    <div id="main" class="mui-clearfix">
	    	<div class="join-top clearfloat box-s">
	    		<div class="list clearfloat">
	    			<div class="left clearfloat fl">
	    				<i class="iconfont icon-fenlei"></i>
	    				<span>城市：</span>
	    			</div>
	    			<div class="right clearfloat fl">
	    				<ul>
	    					<li><a href="#">南京市</a></li>
	    				</ul>
	    			</div>
	    		</div>
	    		<div class="list clearfloat">
	    			<div class="left clearfloat fl">
	    				<i class="iconfont icon-weizhi2"></i>
	    				<span>区域：</span>
	    			</div>
	    			<div class="right clearfloat fl">
	    				<ul>
	    					<li><a href="#">全部</a></li>
	    					<li><a href="#">江宁区</a></li>
	    					<li><a href="#">玄武区</a></li>
	    					<li><a href="#">秦淮区</a></li>
	    					<li><a href="#">建邺区</a></li>
	    					<li><a href="#">鼓楼区</a></li>
	    					<li><a href="#">浦口区</a></li>
	    					<li><a href="#">栖霞区</a></li>
							<li><a href="#">雨花台区</a></li>
							<li><a href="#">六合区</a></li>
							<li><a href="#">溧水区</a></li>
							<li><a href="#">高淳区</a></li>
	    				</ul>
	    			</div>
	    		</div>
	    	</div>
	    	<div class="joins clearfloat">
	    		<div class="join-list clearfloat box-s">
		    		<a href="join-detail.html">
			    		<p class="tit">江宁区加盟店</p>
			    		<div class="lists clearfloat">
			    			<div class="tu fl">
			    				<img src="upload/2.jpg"/>
			    			</div>
			    			<div class="right fr clearfloat">
			    				<p class="tel clearfloat"><span class="bt fl">服务电话：</span><span class="num fl">025-58327977</span></p>
			    				<p class="tel clearfloat"><span class="bt fl">营业时间：</span><span class="num fl">9:00-21:00（周五-周日21:00）</span></p>
			    				<p class="tel clearfloat"><span class="bt fl">门店地址：</span><span class="num fl">南京市江宁区竹山路688号</span></p>
			    			</div>
			    		</div>
		    		</a>
		    	</div>
	    	</div>
	    	
	    </div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
