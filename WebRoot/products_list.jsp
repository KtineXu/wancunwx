<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="Author" content="">
    <meta content="" name="design">
    <title>产品列表</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/ct_style.css"/>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5shiv.v3.72.min.js"></script>
    <![endif]-->
</head>
<body>
&quot;<!--头部 开始-->
<!--#include file="include/top.html" -->
<%@ include file="include/top.html" %>
<script>
    $(function(){
        $(".header .headnav li").eq(1).addClass("on");
    });
</script>
<!--头部 结束-->
<div class="ct_banner" style="background:url(images/c4.jpg) no-repeat center"></div>
<section class="bg">
    <div class="container">
        <!--#include file="include/beside01.html" -->
      	<%@ include file="include/besideOne.jsp" %>
      	
        <!--<div class="lf_nav">-->

        <!--</div>-->
        <div class="maincont">
            <section class="nav-news">
                <a href="index.shtml"><i><img src="images/index-icon.png"></i>首页&nbsp;></a>
                <span class="message">产品中心</span>
            </section>
            <div class="prolist">
                <ul>
                <c:forEach var="p" items="${productList}">
                    <li>
                        <a href="FontFindProductDetail.do?id=${p.id}">
                        	<c:set var="string1" value="${p.imageurl}"/>
                        	<c:set var="string2" value="${fn:substring(string1,0,31)}"/>
                            <img src="${pageContext.request.contextPath}/${string2}" alt=""/>
                            <h6>${p.productname }</h6>
                            <b></b>
                            <p>${p.description }</p>
                        </a>
                    </li>
                   </c:forEach>
                   <!--  <li>
                        <a href="products_detail.jsp">
                            <img src="images/c5.jpg" alt=""/>
                            <h6>阿司匹林</h6>
                            <b></b>
                            <p>为白色结晶或结晶性粉末，无臭味或微有醋酸臭，味微酸</p>
                        </a>
                    </li>
                    <li>
                        <a href="products_detail.shtml">
                            <img src="images/c5.jpg" alt=""/>
                            <h6>阿司匹林</h6>
                            <b></b>
                            <p>为白色结晶或结晶性粉末，无臭味或微有醋酸臭，味微酸</p>
                        </a>
                    </li>
                    <li>
                        <a href="products_detail.jsp">
                            <img src="images/c5.jpg" alt=""/>
                            <h6>阿司匹林</h6>
                            <b></b>
                            <p>为白色结晶或结晶性粉末，无臭味或微有醋酸臭，味微酸</p>
                        </a>
                    </li>
                    <li>
                        <a href="products_detail.jsp">
                            <img src="images/c5.jpg" alt=""/>
                            <h6>阿司匹林</h6>
                            <b></b>
                            <p>为白色结晶或结晶性粉末，无臭味或微有醋酸臭，味微酸</p>
                        </a>
                    </li>
                    <li>
                        <a href="products_detail.jsp">
                            <img src="images/c5.jpg" alt=""/>
                            <h6>阿司匹林</h6>
                            <b></b>
                            <p>为白色结晶或结晶性粉末，无臭味或微有醋酸臭，味微酸</p>
                        </a>
                    </li>
                    <li>
                        <a href="products_detail.jsp">
                            <img src="images/c5.jpg" alt=""/>
                            <h6>阿司匹林</h6>
                            <b></b>
                            <p>为白色结晶或结晶性粉末，无臭味或微有醋酸臭，味微酸</p>
                        </a>
                    </li>
                    <li>
                        <a href="products_detail.jsp">
                            <img src="images/c5.jpg" alt=""/>
                            <h6>阿司匹林</h6>
                            <b></b>
                            <p>为白色结晶或结晶性粉末，无臭味或微有醋酸臭，味微酸</p>
                        </a>
                    </li>
                    <li>
                        <a href="products_detail.jsp">
                            <img src="images/c5.jpg" alt=""/>
                            <h6>阿司匹林</h6>
                            <b></b>
                            <p>为白色结晶或结晶性粉末，无臭味或微有醋酸臭，味微酸</p>
                        </a>
                    </li> -->
                </ul>
                <!--pages-->
                <div class="pages">
                <c:if test="${currentPage == 1}">
                    <a href="#" class="prev">上一页 </a>
                </c:if>
                <c:if test="${currentPage >1}">
                	 <a href="fontFindProductByPageBean.do?currentPage=${currentPage -1}&typeid=${typeid }"" class="prev">上一页 </a>
                </c:if>
                            <span class="number">
                            <c:forEach begin="${pageMap.beginPageIndex}" end="${pageMap.endPageIndex}" var="s">
                            	 <a href="fontFindProductByPageBean.do?currentPage=${s}&typeid=${typeid }">${s}</a>
                            </c:forEach>
                          <!--  <c:forEach var="pb" items="${pageBean}" varStatus="i">
                                <a href="fontFindProductByPageBean.do?currentPage=${i.index+1 }&typeid=${pt.id }">${i.index +1}</a>
                            </c:forEach>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                                <a href="#">6</a>
                                <a href="#">...</a>-->
                            </span>
                            
	                <c:if test="${currentPage == pageMap.endPageIndex}">
	                    <a href="#" class="next on" >下一页</a>
	                </c:if>
	                <c:if test="${currentPage < pageMap.endPageIndex}">
	                	 <a href="fontFindProductByPageBean.do?currentPage=${currentPage +1}&typeid=${typeid }"" class="prev">下一页 </a>
	                </c:if>
                            
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
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript">
    $(function () {
        $(".bg .maincont .prolist ul li").each(function(i){
            if(i%3==0){
                $(this).css("margin-left",0);
            }
        });

    });
</script>
</body>
</html>
