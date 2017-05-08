<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head lang="en">
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<div class="beside">
    <div class="nav-side">
        <h5><b><img src="images/xin01.png"></b>产品中心</h5>
        <i></i>
    </div>
    <ul class="list-side">
    	<c:forEach var="pt" items="${producttypeList}">
        <li><a href="FontFindProductByType.do?typeid=${pt.id }">${pt.typename}<b class="up"><img src="images/side03.png"></b> </a></li>
        </c:forEach>
		        <!-- <li><a href="#">阿司匹林系列<b class="up"><img src="images/side03.png"></b> </a></li>
		        <li><a href="#">阿司匹林系列<b class="up"><img src="images/side03.png"></b> </a></li>
		        <li><a href="#">阿司匹林系列<b class="up"><img src="images/side03.png"></b> </a></li>
		        <li><a href="#">阿司匹林系列<b class="up"><img src="images/side03.png"></b> </a></li>
		        <li><a href="#">阿司匹林系列<b class="up"><img src="images/side03.png"></b> </a></li> -->
    </ul>
    <ul class="list-side2">
        <li>
            <a href="findColumnInfoById.do?id=51">
                <em><img src="images/side4.png"><img src="images/side4-on.png"></em>
                <p>企业实力</p>
            </a>
        </li>
        <li>
            <a href="findHrInfoById.do">
                <em><img src="images/side5.png"><img src="images/side5-on.png"></em>
                <p>人才招聘</p>
            </a>
        </li>
        <li>
            <a href="connectionOur.jsp">
                <em><img src="images/side6.png"><img src="images/side6-on.png"></em>
                <p>联系我们</p>
            </a>
        </li>
    </ul>
    <div class="nav-side">
        <h5><b><img src="images/xin01.png"></b>新闻资讯</h5>
        <i></i>
    </div>
    <div class="list-side3">
        <em><img src="${news.imgURL }"></em>
        <dl>
            <dt>${news.title } </dt>
            <dd>${news.description }<a class="more" href="behindFindById.do?id=18">【详细】</a></dd>
        </dl>
        <ul class="list-side3-cont">
        <c:forEach var="nl" items="${newsList}">
            <li><a href="behindFindById.do?id=${nl.id}">${nl.title }</a></li>
        </c:forEach>
            <!--  <li><a href="新闻资讯详情.shtml">热烈庆祝我司与2013年1月通过FDA认证</a></li>
            <li><a href="新闻资讯详情.shtml">热烈庆祝我司与2013年1月通过FDA认证</a></li>
            <li><a href="新闻资讯详情.shtml">热烈庆祝我司与2013年1月通过FDA认证</a></li>
            <li><a href="新闻资讯详情.shtml">热烈庆祝我司与2013年1月通过FDA认证</a></li>
            <li><a href="新闻资讯详情.shtml">热烈庆祝我司与2013年1月通过FDA认证</a></li>
            <li><a href="新闻资讯详情.shtml">热烈庆祝我司与2013年1月通过FDA认证</a></li>-->
        </ul>
    </div>
</div>
</body>
</html>
