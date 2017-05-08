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
    <title>联系我们</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/tx_type.css"/>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5shiv.v3.72.min.js"></script>
    <![endif]-->
</head>
<body>
<!--头部 开始-->
<%@include file="include/top.html"   %>
<!--#include file="include/top.html" -->
<!--头部 结束-->
<section class="banner" style="background: url(images/banner-new.jpg) no-repeat center"></section>
<section class="bg">
    <div class="container  container-margin">
    <!--左侧 开始-->
    <%@include file="include/beside02.html" %>
    <!--#include file="include/beside02.html" -->
    <!--左侧 结束-->
    <div class="news-rt">
        <section class="nav-news">
            <a href="index.shtml"><i><img src="images/index-icon.png"></i>首页&nbsp;></a>
            <span class="message">联系我们</span>
        </section>
        <div class="contact-us">
            <h6>华阴市锦前程药业有限公司</h6>
            <div class="contact-Iterm1">
                <i><img src="images/side28.jpg"></i>
                <div class="Iterm1-list">
                        <p>业务部电话：0913-4356058    4356028  </p>
                        <p>国际贸易部电话：0913-4356009  </p>
                        <p>业务部传真：0913-4356066  </p>
                        <p>业务负责人：李　娜 13809134088   Email：na@jqcpharm.com  </p>
                    </p>
                </div>
            </div>
            <div class="contact-Iterm1 contact-Iterm2">
                <i><img src="images/side29.jpg"></i>
                <div class="Iterm1-list">
                    <p>邮箱：</p>
                    <p>Frank Fu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fyb@jqcpharm.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Adam xia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;adam.xia@jqcpharm.com</p>
                    <p>Lsabella Liu&nbsp;&nbsp;&nbsp;&nbsp;liu@jqcpharm.com&nbsp;&nbsp;&nbsp;&nbsp;Merry Wang&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wy@jqcpharm.com</p>
                    <p>David Mu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mdg@jqcpharm.com&nbsp;&nbsp;&nbsp;&nbsp;Bruce Shi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;shi@jqcpharm.com</p>
                    </p>
                </div>
            </div>
            <h6>锦前程（上海）国际贸易有限公司</h6>
            <div class="contact-Iterm1">
                <i><img src="images/side28.jpg"></i>
                <div class="Iterm1-list">
                    <p>业务部电话：0913-4356058    4356028  </p>
                    <p>国际贸易部电话：0913-4356009  </p>
                    <p>业务部传真：0913-4356066  </p>
                    <p>业务负责人：李　娜 13809134088   Email：na@jqcpharm.com  </p>
                    </p>
                </div>
            </div>
            <div class="contact-Iterm1 contact-Iterm2">
                <i><img src="images/side28.jpg"></i>
                <div class="Iterm1-list Iterm1-list2">
                    <p>地 址：上海市闵行区吴中路1439号莱茵虹景B811室</p>
                    <p>邮编：201101</p>
                </div>
            </div>

        </div>
    </div>
</div>
</section>
<!--底部 开始-->
<!--#include file="include/bottom.html" -->
<%@ include file="include/bottom.html" %>
<!--底部 结束-->
<script src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">


    $(".beside>.list-side>li").eq(2).addClass("on");

</script>
</body>
</html>
