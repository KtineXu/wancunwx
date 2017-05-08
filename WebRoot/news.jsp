<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="Author" content="">
    <meta content="" name="design">
    <title>新闻资讯列表</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/tx_type.css"/>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5shiv.v3.72.min.js"></script>
    <![endif]-->
</head>
<body>
<!--头部 开始-->
<!--#include file="include/top.html" -->
<%@ include file="include/top.html" %>
<!--头部 结束-->
<section class="banner" style="background: url(images/banner-new.jpg) no-repeat center"></section>
<section class="bg">
    <div class="container">
        <!--左侧 开始-->
        <!--#include file="include/beside01.html" -->
        <%@ include file="include/besideOne.jsp" %>
        <!--左侧 结束-->

        <div class="news-rt">
            <section class="nav-news">
                <a href="index.shtml"><i><img src="images/index-icon.png"></i>首页&nbsp;></a>
                <span class="message">新闻资讯</span>
            </section>
            <div class="information">
              <ul>
                <c:forEach var="i" items="${list}"> 
                   <li>
                        <em><a href="behindFindById.do?id=${i.id}"><img src="${i.imgURL}"></a> </em>
                        <dl>
                            <dt><a href="behindFindById.do?id=${i.id}">${i.title}</a></dt>
                            <dd>
                                ${i.description}<a class="more"href="behindFindById.do?id=${i.id}">【详情】</a>
                            </dd>
                            <dd class="join">
                                <b><img src="images/side9.jpg"><img src="images/side9-on.jpg"></b><span><img src="images/side10.jpg">&nbsp;${i.clickCount}</span>
                            </dd>
                        </dl>
                    </li>
                  </c:forEach>
                    <!--<li>
                        <em><a href="新闻资讯详情.shtml"><img src="images/xin2.jpg"></a> </em>
                        <dl>
                            <dt><a href="新闻资讯详情.shtml">热烈订祝我司与2013年1月通过FDA认证</a></dt>
                            <dd>
                                在邓白氏注册了出口产品NDC号，目前正积极准备向美国、欧洲等相关国家地区递交各产品的DMF、COS、REACH等相关注册文件，年3亿元产值中75%出口至国际...<a class="more"href="新闻资讯详情.shtml">【详情】</a>
                            </dd>
                            <dd class="join">
                                <b><img src="images/side9.jpg"><img src="images/side9-on.jpg"></b><span><img src="images/side10.jpg">&nbsp;115</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <em><a href="新闻资讯详情.shtml"><img src="images/xin2.jpg"></a> </em>
                        <dl>
                            <dt><a href="新闻资讯详情.shtml">热烈订祝我司与2013年1月通过FDA认证</a></dt>
                            <dd>
                                在邓白氏注册了出口产品NDC号，目前正积极准备向美国、欧洲等相关国家地区递交各产品的DMF、COS、REACH等相关注册文件，年3亿元产值中75%出口至国际...<a class="more"href="新闻资讯详情.shtml">【详情】</a>
                            </dd>
                            <dd class="join">
                                <b><img src="images/side9.jpg"><img src="images/side9-on.jpg"></b><span><img src="images/side10.jpg">&nbsp;115</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <em><a href="新闻资讯详情.shtml"><img src="images/xin2.jpg"></a> </em>
                        <dl>
                            <dt><a href="新闻资讯详情.shtml">热烈订祝我司与2013年1月通过FDA认证</a></dt>
                            <dd>
                                在邓白氏注册了出口产品NDC号，目前正积极准备向美国、欧洲等相关国家地区递交各产品的DMF、COS、REACH等相关注册文件，年3亿元产值中75%出口至国际...<a class="more"href="新闻资讯详情.shtml">【详情】</a>
                            </dd>
                            <dd class="join">
                                <b><img src="images/side9.jpg"><img src="images/side9-on.jpg"></b><span><img src="images/side10.jpg">&nbsp;115</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <em><a href="新闻资讯详情.shtml"><img src="images/xin2.jpg"></a> </em>
                        <dl>
                            <dt><a href="新闻资讯详情.shtml">热烈订祝我司与2013年1月通过FDA认证</a></dt>
                            <dd>
                                在邓白氏注册了出口产品NDC号，目前正积极准备向美国、欧洲等相关国家地区递交各产品的DMF、COS、REACH等相关注册文件，年3亿元产值中75%出口至国际...<a class="more"href="新闻资讯详情.shtml">【详情】</a>
                            </dd>
                            <dd class="join">
                                <b><img src="images/side9.jpg"><img src="images/side9-on.jpg"></b><span><img src="images/side10.jpg">&nbsp;115</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <em><a href="新闻资讯详情.shtml"><img src="images/xin2.jpg"></a> </em>
                        <dl>
                            <dt><a href="新闻资讯详情.shtml">热烈订祝我司与2013年1月通过FDA认证</a></dt>
                            <dd>
                                在邓白氏注册了出口产品NDC号，目前正积极准备向美国、欧洲等相关国家地区递交各产品的DMF、COS、REACH等相关注册文件，年3亿元产值中75%出口至国际...<a class="more"href="新闻资讯详情.shtml">【详情】</a>
                            </dd>
                            <dd class="join">
                                <b><img src="images/side9.jpg"><img src="images/side9-on.jpg"></b><span><img src="images/side10.jpg">&nbsp;115</span>
                            </dd>
                        </dl>
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
<!--底部 开始-->
<!--#include file="include/bottom.html" -->
<%@ include file="include/bottom.html" %>
<!--底部 结束-->
<script src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
//
    $(".information ul li:last-child").css("border-bottom","none");
    //奇数偶数问题
    $(".information ul li dl .join b img:nth-child(even)").hide();
    $(".information ul li dl .join b").hover(function(){
        $(this).find("img:nth-child(even)").show();
        $(this).find("img:nth-child(odd)").hide();
    },function(){
        $(this).find("img:nth-child(even)").hide();
        $(this).find("img:nth-child(odd)").show();
    });


</script>
</body>
</html>
