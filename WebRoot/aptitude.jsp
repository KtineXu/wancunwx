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
    <title>企业资质</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/tx_type.css"/>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script src="js/jquery.SuperSlide.2.1.1.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5shiv.v3.72.min.js"></script>
    <![endif]-->
</head>
<body>
<!--头部 开始-->
<%@include file="include/top.html" %>
<!--#include file="include/top.html" -->
<!--头部 结束-->
<section class="banner" style="background: url(images/banner-new.jpg) no-repeat center"></section>
<section class="bg">
    <div class="container">
        <!--左侧 开始-->
        <%@include file="include/beside02.html" %>
        <!--#include file="include/beside02.html" -->
        <!--左侧 结束-->

        <div class="news-rt">
            <section class="nav-news">
                <a href="index.shtml"><i><img src="images/index-icon.png"></i>首页&nbsp;></a>
                <a href="#">企业实力&nbsp;></a>
                <span class="message">企业资质</span>
            </section>
            <div class="enterprise">
                <nav class="firm">企业资质</nav>
                <div class="firm-list">
                    <div class="tab">
                        <ul>
                            <li><img src="images/side17.jpg"></li>
                            <li><img src="images/side17.jpg"></li>
                            <li><img src="images/side17.jpg"></li>
                            <li><img src="images/side17.jpg"></li>
                            <li><img src="images/side17.jpg"></li>
                            <li><img src="images/side17.jpg"></li>
                            <li><img src="images/side17.jpg"></li>
                            <li><img src="images/side17.jpg"></li>
                            <li><img src="images/side17.jpg"></li>
                        </ul>
                    </div>
                    <div class="tab-btn">
                        <ul>
                            <li></li>
                            <li></li>
                            <li>&quot;</li>
                        </ul>
                    </div>
                </div>
                <nav class="firm">FAD EIR</nav>
                <ul class="fad">
                    <li><img src="images/side18.jpg"></li>
                    <li><img src="images/side18.jpg"></li>
                    <li><img src="images/side18.jpg"></li>
                </ul>
                <nav class="firm">FAD现场</nav>
                <ul class="scene">
                    <li><img src="images/side19.jpg"></li>
                    <li><img src="images/side19.jpg"></li>
                    <li><img src="images/side19.jpg"></li>
                    <li><img src="images/side19.jpg"></li>
                </ul>
                <nav class="firm">GPM及相关认证 </nav>
                <ul class="approve">
                    <li><img src="images/side20.jpg"></li>
                    <li><img src="images/side20.jpg"></li>
                    <li><img src="images/side20.jpg"></li>
                    <li><img src="images/side20.jpg"></li>
                    <li><img src="images/side20.jpg"></li>
                    <li><img src="images/side20.jpg"></li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!--底部 开始-->
<!--#include file="include/bottom.html" -->
<%@ include file="include/bottom.html" %>
<!--底部 结束-->
<script type="text/javascript">

    $(".beside>.list-side>li").eq(1).addClass("on");
    //切换
    jQuery(" .firm-list").slide({titCell:".tab-btn ul li", mainCell:" .tab ul",effect:"left", autoPlay:true,  scroll:3,vis:3});
    $(".enterprise .firm-list .tab ul li:first-child").css("margin-left",0);
    //fad现场
    $(".enterprise .scene li").each(function(i){
       if(i%2==0){
           $(this).css("margin-left","0");
       }
    });
    //GPM及相关认证
    $(".enterprise .approve li").each(function(i){
        if(i%3==0){
            $(this).css("margin-left","0");
        }
    });

</script>
</body>
</html>
