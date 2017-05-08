<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="Author" content="">
    <meta content="" name="design">
    <title>首页</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/ct_style.css"/>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5shiv.v3.72.min.js"></script>
    <![endif]-->
</head>
<body>
<!--头部 开始-->
<!--#include file="include/top.html" -->
<script>
    $(function(){
        $(".header .headnav li").eq(1).addClass("on");
    });
</script>
<!--头部 结束-->
<!--面包屑导航-->
<section class="nav-news">
    <a href="index.shtml"><i><img src="images/index-icon.png"></i>首页&nbsp;></a>
    <a href="#">企业实力&nbsp;></a>
    <span class="message">企业介绍</span>
</section>
<!--面包屑导航-->



<!--pages-->
<div class="pages">
    <a href="#" class="prev">上一页 </a>
                            <span class="number">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                                <a href="#">6</a>
                                <a href="#">...</a>
                            </span>
    <a href="#" class="next on" >下一页</a>
    <div class="clear"></div>
</div>
<!--pages-->






<!--返回顶部按钮-->
<div class="toTop">
    <a href="javascript:void(0)">返回顶部</a>
</div>
<!--返回顶部按钮-->
<!--底部 开始-->
<!--#include file="include/bottom.html" -->
<!--底部 结束-->
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
<script type="text/javascript">
    //   input中有placeholder
    $(function () {
        $('input, textarea').placeholder();
    });
</script>
</body>
</html>
