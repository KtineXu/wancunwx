<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <title>质量服务列表</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/ct_style.css"/>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5shiv.v3.72.min.js"></script>
    <![endif]-->
</head>
<body>
<!--头部 开始-->
<!--#include file="include/top.html" -->
<%@ include file="include/top.html" %>
<script>
    $(function(){
        $(".header .headnav li").eq(2).addClass("on");
    });
</script>
<!--头部 结束-->
<div class="ct_banner" style="background:url(images/c4.jpg) no-repeat center"></div>
<section class="bg">
    <div class="container">
        <!--#include file="include/beside03.html" -->
        <%@ include file="include/beside03.html" %>
        <!--<div class="lf_nav">-->

        <!--</div>-->
        <div class="maincont">
            <section class="nav-news">
                <a href="index.shtml"><i><img src="images/index-icon.png"></i>首页&nbsp;></a>
                <span class="message">质量服务</span>
            </section>
            <div class="QservList">
                <ul>
                   <c:forEach var="i" items="${list}">
                    <li>
                        <a href="javascript:void(0)">
                            <img src="${i.imgURL }" alt=""/>
                            <h6>${i.title}</h6>
                            <b></b>
                        </a>
                    </li>
                    </c:forEach>
                    <!--<li>
                        <a href="javascript:void(0)">
                            <img src="images/c1.jpg" alt=""/>
                            <h6>质量部检</h6>
                            <b></b>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="images/c2.jpg" alt=""/>
                            <h6>质量部检</h6>
                            <b></b>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="images/c3.jpg" alt=""/>
                            <h6>质量部检</h6>
                            <b></b>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="images/c4.jpg" alt=""/>
                            <h6>质量部检</h6>
                            <b></b>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="images/c5.jpg" alt=""/>
                            <h6>质量部检</h6>
                            <b></b>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="images/c6.jpg" alt=""/>
                            <h6>质量部检</h6>
                            <b></b>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="images/c7.jpg" alt=""/>
                            <h6>质量部检</h6>
                            <b></b>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="images/c8.jpg" alt=""/>
                            <h6>质量部检</h6>
                            <b></b>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="images/01a.jpg" alt=""/>
                            <h6>质量部检</h6>
                            <b></b>
                        </a>
                    </li>

                -->
                </ul>
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
            </div>
        </div>
    </div>
</section>

<!--弹框看大图-->
<section class="popBigPic">
    <ul>

    </ul>
    <a href="javascript:void(0)" class="prev"></a>
    <a href="javascript:void(0)" class="next"></a>
    <a href="javascript:void(0)" class="close" onclick="close1()"></a>
</section>



<!--底部 开始-->
<!--#include file="include/bottom.html" -->
<%@ include file="include/bottom.html" %>
<!--底部 结束-->
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript">
    $(function () {
        $(".bg .maincont .QservList ul li").each(function(i){
            if(i%3==0){
                $(this).css("margin-left",0);
            }
        });

    });

    function close1(){
        $(".popBigPic").hide();
    }
//    弹框
    var index,Isrc,li;
    $(".bg .maincont .QservList ul li").each(function(i){
         Isrc=$(this).find("img").attr("src");
         li = $("<li><img /></li>");
        li.find("img").attr("src",Isrc);
        li.appendTo(".popBigPic ul");

        $(this).click(function(){
            $(".popBigPic").show();
            $(".popBigPic ul").css("left",-820*i);
            index=i;

            jQuery(".popBigPic ").slide({mainCell:"ul",effect:"left",scroll:1,vis:1,prevCell:".prev",nextCell:".next",defaultIndex:index});
        });

    });


</script>
</body>
</html>
