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
    <title>购物指南</title>
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
			<p>购物指南</p>
	    </header>
	    <div id="main" class="mui-clearfix">
	    	<!--pcenter list star-->
			<div class="plist clearfloat">
				<ul>
					<li class="clearfloat">
						<a href="baseDetail.jsp">
							<i class="iconfont icon-dian fl"></i>
							<p class="fl">购物流程</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="baseDetail.jsp">
							<i class="iconfont icon-dian fl"></i>
							<p class="fl">会员制度</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="baseDetail.jsp">
							<i class="iconfont icon-dian fl"></i>
							<p class="fl">常见问题</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="baseDetail.jsp">
							<i class="iconfont icon-dian fl"></i>
							<p class="fl">积分查询及有效期</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
				</ul>
			</div>
			<!--pcenter list end-->
	    </div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
