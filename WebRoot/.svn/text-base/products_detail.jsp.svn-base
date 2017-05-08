<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="Author" content="">
    <meta content="" name="design">
    <title>产品详情</title>
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
<%@include file="include/top.html" %>
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
        <%@include file="include/besideOne.jsp" %>
        <!--<div class="lf_nav">-->

        <!--</div>-->
        <div class="maincont">
            <section class="nav-news">
                <a href="index.shtml"><i><img src="images/index-icon.png"></i>首页&nbsp;></a>
                <span class="message">产品中心</span>
            </section>
            <div class="prodetail">
                <h2><i><img src="images/index15.png" alt=""/></i><span>${product.productname }</span><i><img src="images/index16.png" alt=""/></i></h2>
                <h3>产品展示</h3>
                <div class="detail_carousel">
                    <ul>
                    	<c:forEach var="image" items="${imageList}">
                        <li><img src="${image }" alt=""/></li>
                        </c:forEach>
                        <!--  <li><img src="images/c6.jpg" alt=""/></li>
                        <li><img src="images/c6.jpg" alt=""/></li>
                        <li><img src="images/c6.jpg" alt=""/></li>-->
                    </ul>
                    <a href="javascript:void(0)" class="prev"></a>
                    <a href="javascript:void(0)" class="next"></a>
                    <div class="tabs">
                        <a href=""></a>
                        <a href=""></a>
                        <a href=""></a>
                        <a href=""></a>
                    </div>
                </div>
                <h3>产品说明</h3>
                <div>${product.detail}</div>
                <!--  <table class="table" cellpadding="0" cellspacing="0">
                    <tbody>
                    <tr>
                        <td width="24%" >化学名称：</td>
                        <td width="76%"><div align="left">乙酰水杨酸</div></td>
                    </tr>
                    <tr>
                        <td>俗&#12288;&#12288;名：</td>
                        <td>阿司匹林</td>
                    </tr>
                    <tr>
                        <td>化 学 式：</td>
                        <td>C<sub>9</sub>H<sub>8</sub>O<sub>4</sub></td>
                    </tr>
                    <tr>
                        <td>CAS：</td>
                        <td><img width="120" height="86" src="images/01.gif"></td>
                    </tr>
                    <tr>
                        <td>结 构 式：</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>质量标准：</td>
                        <td>BP/USP/EP/CP/JP</td>
                    </tr>
                    <tr>
                        <td>理化性质：</td>
                        <td>本品为白色结晶或结晶性粉末，无臭味或微有醋酸臭，味微酸，遇湿气即缓缓水解成水杨酸与醋酐，水溶液呈酸性反应，在乙醇中易溶，在氯仿或乙醚中溶解，在水或无水乙醚中微溶，在氢氧化碱或碳酸碱溶液中溶解，但同时分解。 </td>
                    </tr>
                    <tr>
                        <td>规&#12288;&#12288;格：</td>
                        <td>
                            <table cellspacing="0" cellpadding="0" class="zw">
                            <tbody><tr>
                                <td width="129">含量：</td>
                                <td>99.50-101.0%</td>
                            </tr>
                            <tr>
                                <td width="129">重金属：</td>
                                <td>≤20ppm</td>
                            </tr>
                            <tr>
                                <td width="129">游离水杨酸：</td>
                                <td>≤500ppm</td>
                            </tr>
                            <tr>
                                <td width="129">灼烧残渣：</td>
                                <td>≤0.1%</td>
                            </tr>
                            <tr>
                                <td width="129">干燥失重：</td>
                                <td >≤0.50%</td>
                            </tr>
                            <tr>
                                <td width="129">相关物质：</td>
                                <td>≤0.1%</td>
                            </tr>
                            </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>用&#12288;&#12288;途：</td>
                        <td>本品为解热、镇痛和抗风湿病药，用于发热、头痛、关节痛、活动性风湿病及类风湿性关节炎、牙痛及痛经，以做抗癌原料药。 </td>
                    </tr>
                    <tr>
                        <td>包&#12288;&#12288;装：</td>
                        <td>用圆板桶内衬纸袋或聚乙烯塑料袋包装，净重为25公斤。</td>
                    </tr>
                    <tr>
                        <td>贮&#12288;&#12288;藏：</td>
                        <td>置封闭容器内，干燥处保存。</td>
                    </tr>
                    <tr>
                        <td>产品图片：</td>
                        <td><img width="350" height="235" src="images/01a.jpg"></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="last">我公司可根据客户要求进行订单式生产和包装。</td>
                    </tr>
                    </tbody>
                </table>-->
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

    jQuery(".bg .maincont .prodetail .detail_carousel").slide({mainCell:"ul",titCell:".tabs a",effect:"leftLoop",scroll:1,vis:1,prevCell:".prev",nextCell:".next"});

</script>
</body>
</html>
