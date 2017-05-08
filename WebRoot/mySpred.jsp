<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <meta name="Author" content="">
    <meta content="cn" name="design">
    <title>我的推广</title>
    <link rel="stylesheet" href="css/swiper.min.css"/>
    <link type="text/css" rel="stylesheet" href="css/base.css"/>
</head>

<body>
<!--header-->
<header class="Top">
	<a href="javascript:history.go(-1)" class="back"><b><img src="images/back_icon.png" /></b>返回</a>
	<a class="topName">我的作品</a>
	<a href="#" class="ticon"><img src="images/head_icon.png" /></a>
</header>
<!--header-->
<!--主体内容-->
<div class="CodeImg">
	<i>我的推广&nbsp;&nbsp;</i>
	<div class="Cont">
	<em><img src="createQRCode.do" /></em>
	<p>点击<span>右上角</span>分享到<span>朋友圈</span>，凡是通
过您分享的链接进入并购买成功的
您将<span>获得相应的积分奖励</span></p>
    </div>
</div>
<!--主体内容-->
<!--Hbox-->

<!--footer-->



<!--footer-->
<!--返回顶部-->
<a href="javascript:void(0)" class="goTop" onclick="backTop()">返回顶部</a>
<!--返回顶部-->
<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/imgsize.js"></script>
<script type="text/javascript">
	$(".CodeImg").height($(window).height()-$(".CodeImg").offset().top);
</script>
</body>
</html>
