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
    <title>我的团队</title>
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
			<p>我的团队</p>
	    </header>
	    <div id="main" class="mui-clearfix">	    	
			<div class="extension clearfloat box-s">				
				<div class="ex-bottom clearfloat box-s">
					<span class="fl">我的团队</span>
					<span class="fr">已邀请：0人</span>
				</div>
				<div class="ex-ctent clearfloat">
					<dl class="fl clearfloat">
						<dt>手机号码</dt>
						<dd>1355555****</dd>
						<dd>1355555****</dd>
						<dd>1355555****</dd>
					</dl>
					<dl class="fl clearfloat">
						<dt>注册时间</dt>
						<dd>2016-04-20</dd>
						<dd>2016-04-20</dd>
						<dd>2016-04-20</dd>
					</dl>
					<dl class="fl clearfloat">
						<dt>是否消费</dt>
						<dd>是</dd>
						<dd>是</dd>
						<dd>是</dd>
					</dl>
				</div>
			</div>			
	    </div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
