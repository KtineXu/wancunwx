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
    <title>选择收货地址</title>
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
			<p>选择收货地址</p>
			<span class="fr baocun"><a href="address.html">管理</a></span>			
	    </header>
	    <div id="main" class="mui-clearfix add-address choice-address">
	    	<div class="addlist clearfloat">
	    		<div class="top clearfloat box-s">
	    			<ul>
	    				<li>
	    					<span class="fl">张三</span>
	    					<span class="fr">1355555****</span>
	    				</li>
	    				<li>
	    					<span class="moren">[默认地址]</span>北京市朝阳区XXXXXXXXXXXXXXXXXXXXXXX
	    				</li>
	    			</ul>
	    		</div>
	    	</div>
	    	<div class="addlist clearfloat">
	    		<div class="top clearfloat box-s">
	    			<ul>
	    				<li>
	    					<span class="fl">张三</span>
	    					<span class="fr">1355555****</span>
	    				</li>
	    				<li>
	    					北京市朝阳区XXXXXXXXXXXXXXXXXXXXXXX
	    				</li>
	    			</ul>
	    		</div>
	    	</div>
	    	<div class="addlist clearfloat">
	    		<div class="top clearfloat box-s">
	    			<ul>
	    				<li>
	    					<span class="fl">张三</span>
	    					<span class="fr">1355555****</span>
	    				</li>
	    				<li>
	    					北京市朝阳区XXXXXXXXXXXXXXXXXXXXXXX
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
	<script type="text/javascript" src="js/jquery.min.js"></script>
</html>

