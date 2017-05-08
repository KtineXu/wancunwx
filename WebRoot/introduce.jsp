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
    <title>企业介绍</title>
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
<!--#include file="include/top.html" -->
<%@ include file="include/top.html" %>
<!--头部 结束-->
<section class="banner" style="background: url(images/banner-new.jpg) no-repeat center"></section>
<section class="bg">
    <div class="container">
        <!--左侧 开始-->
        <!--#include file="include/beside02.html" -->
        <%@ include file="include/beside02.html" %>
        <!--左侧 结束-->

        <div class="news-rt">
            <section class="nav-news">
                <a href="index.shtml"><i><img src="images/index-icon.png"></i>首页&nbsp;></a>
                <a href="#">企业实力&nbsp;></a>
                <span class="message">企业介绍</span>
            </section>
            <div class="company-profile">
              <c:if test="${news.id != null}">
                <p>
                    ${news.detail}
                </p>
              </c:if>
                <!--<p>
                    <b>华</b>阴市锦前程药业有限公司是于2002年初，在原国有大型制药企业西北第二合成药厂破产重组过程中，通过购买其部分土地及地面资产重新组建而成的民营企业，是一家专业从事原料药及化工中间体研发生产的制药企业，专注于水杨酸系列产品的生产和研发，注册资本1118万元，目前实际资本近1.5亿元。分别于2004年2010年和2015年通过了国家食品药品监督管理局制药企业GMP认证。拥有自营进出口权，2013年元月26日通过美国FDA审计。在邓白氏注册了出口产品NDC号，目前正积极准备向美国、欧洲等相关国家地区递交各产品的DMF、COS、REACH等相关注册文件，年3亿元产值中75%出口至国际市场。
                </p>
                <p>
                    <b>锦</b>前程药业位于中国中西部陕西省华阴市境内，西岳华山脚下。周边交通极为发达，距古都西安100公里，坐高铁只需30分钟，到北京4小时即可。沪陕高铁通车后，从本公司到上海4小时即到。公司自有产权土地面积17645平方米，总建筑面积12460多平方米，绿地面积3600多平方米，拥有自己的研发和生产基地，8套按照GMP标准建设的独立原料药D级净化生产线（6条固体线1条液体线1条药包材生产线），配套设施齐全，水、电、气资源极为充裕。质量检测及控制方面拥有高效精密的检测仪器，有着严格的质量管理体系。
                </p>
                <span><img src="images/side13.jpg"></span>
                <p>
                    <b>公</b>司下设：行政部、人力资源部、财务部、生产部、质量部、设备动力部、物控部、市场部和安环部9个主要部门。关联企业：华阴市锦前程药业有限公司原料分公司、华阴市和睿达能源服务有限公司、合肥久联制药有限公司、锦前程（上海）国际贸易公司、陕西康皓药业有限公司、苏商新产业包装有限公司</b>
                </p>
                <p><b>锦</b>前程药业秉承"诚信得天下、优质共双赢"的企业精神，追求"安全规范、环保运行、以人为本，引领企业健康发展"的价值理念，对外创国际品牌企业，对内苦练内功，坚持科学化、人性化管理企业。本着大产量、高质量、低价格、优服务的宗旨为全球客商提供满意的服务，努力把企业打造成国际行业内最具影响力的品牌制造商！</p>
                -->
                <!--<nav class="firm">企业办公</nav>
                <div class="firm-list">
                    <div class="tab">
                        <ul>
                            <li><img src="images/photo.jpg"></li>
                            <li><img src="images/photo.jpg"></li>
                            <li><img src="images/photo.jpg"></li>
                            <li><img src="images/photo.jpg"></li>
                            <li><img src="images/photo.jpg"></li>
                            <li><img src="images/photo.jpg"></li>
                            <li><img src="images/photo.jpg"></li>
                            <li><img src="images/photo.jpg"></li>
                            <li><img src="images/photo.jpg"></li>
                        </ul>
                    </div>
                    <div class="tab-btn">
                        <ul>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
                <nav class="firm">车间展示</nav>
                <div class="display">
                    <ul>
                        <li><img src="images/side15.jpg"></li>
                        <li><img src="images/side15.jpg"></li>
                        <li><img src="images/side15.jpg"></li>
                        <li><img src="images/side15.jpg"></li>
                        <li><img src="images/side15.jpg"></li>
                        <li><img src="images/side15.jpg"></li>
                    </ul>
                </div>
                <nav class="firm">车间展示</nav>
                <div class="splay">
                    <ul>
                        <li><img src="images/side16.jpg"></li>
                        <li><img src="images/side16.jpg"></li>
                    </ul>
                </div>
        -->
            <c:forEach var="i" items="${list}"> 
                <nav class="firm">${i.columnName}</nav>
                <div class="splay">
                    <ul>
                      <c:forEach var="i" items="${zlist}">
                        <li><img src="${i.imgURL}"></li>
                      </c:forEach>
                    </ul>
                </div>
           </c:forEach>
        
        </div>
    </div>
    </div>
</section>
<!--底部 开始-->
<!--#include file="include/bottom.html" -->
<%@ include file="include/bottom.html" %>
<!--底部 结束-->
<!--<script src="js/beside.js"></script>-->
<script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
<script type="text/javascript">

    $(".beside>.list-side>li").eq(0).addClass("on");
    //   input中有placeholder
    $(function () {
        $('input, textarea').placeholder();
    });

    //
    $(".display ul li").each(function (i) {
        if (i % 3 == 0) {
            $(this).css("margin-left", 0);
        }
    });
    //切换
    jQuery(" .firm-list").slide({titCell:".tab-btn ul li", mainCell:" .tab ul",effect:"left", autoPlay:true,  scroll:3,vis:3});
    $(".company-profile .firm-list .tab ul li:first-child").css("margin-left",0);
</script>
</body>
</html>
