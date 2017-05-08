<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="Author" content="">
    <meta content="" name="design">
    <title>新闻资讯详情</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/tx_type.css"/>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5shiv.v3.72.min.js"></script>
    <![endif]-->
</head>
<body>
<!--头部 开始-->
<%@ include file="include/top.html" %>
<!--#include file="include/top.html" -->
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
            <div class="information-detail">
                <h5>${news.title}</h5>
                <p class="rank">${news.addDate}&nbsp;&nbsp;&nbsp;&nbsp;<i>点击数</i>：${news.clickCount}&nbsp;&nbsp;&nbsp;&nbsp;<i>来源</i>：锦前程</p>
                <div class="write">
                    <p style="text-indent: 24px;color: #333;line-height: 24px;margin-top: 25px">
                       ${news.detail}
                    </p>
                    <!--<p style="text-indent: 24px;color: #333;line-height: 24px;margin-top: 25px">
                        锦前程药业位于中国中西部陕西省华阴市境内，西岳华山脚下。周边交通极为发达，距古都西安100公里，坐高铁只需30分钟，到北京4小时即可。沪陕高铁通车后，从本公司到上海4小时即到。公司自有产权土地面积17645平方米，总建筑面积12460多平方米，绿地面积3600多平方米，拥有自己的研发和生产基地，8套按照GMP标准建设的独立原料药D级净化生产线（6条固体线1条液体线1条药包材生产线），配套设施齐全，水、电、气资源极为充裕。质量检测及控制方面拥有高效精密的检测仪器，有着严格的质量管理体系。
                    </p>
                    <p style="text-indent: 24px;color: #333;line-height: 24px;margin-top: 25px">
                        公司下设：行政部、人力资源部、财务部、生产部、质量部、设备动力部、物控部、市场部和安环部9个主要部门。关联企业：华阴市锦前程药业有限公司原料分公司、华阴市和睿达能源服务有限公司、合肥久联制药有限公司、锦前程（上海国际贸易公司、陕西康皓药业有限公司、苏商新产业包装有限公司
                    </p>
                    <p style="text-indent: 24px;color: #333;line-height: 24px;margin-top: 25px;margin-bottom: 35px">
                        锦前程药业秉承"诚信得天下、优质共双赢"的企业精神，追求"安全规范、环保运行、以人为本，引领企业健康发展"的价值理念，对外创国际品牌企业，对内苦练内功，坚持科学化、人性化管理企业。本着大产量、高质量、低价格、优服务的宗旨为全球客商提供满意的服务，努力把企业打造成国际行业内最具影响力的品牌制造商！
                    </p>
                    <img src="images/side11.jpg"><img src="images/side12.jpg" style="float: right">
                    <p  style="margin-left:12px;color: #333;line-height: 24px;margin-top: 15px;margin-bottom: 40px">
                        本着大产量、高质量、低价格、优服务的宗旨为全球客商提供满意的服务，努力把企业打造成国际行业内最具影响力的品牌制造商！
                    </p>
                    -->
                    <p style="line-height: 24px;margin-top: 45px">
                        <a href="#" style="color: #333;">上一条新闻：热烈预祝我司与2013年1月通过GDA认证</a>
                    </p>
                    <p  style="line-height: 24px;margin-top:5px;text-decoration: underline">
                        <a href="#" style="color: #fa0606;">下一条新闻：锦前程药业秉承</a>
                    </p>
                    <div class="bdsharebuttonbox" style="margin-top: 40px;margin-bottom: 148px">
                        <p>分享到：</p>
                        <a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
                    <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
                </div>
                    <div class="clear">
                </div>
            </div>
            </div>
        </div>
</section>
</div>
<!--底部 开始-->
<!--#include file="include/bottom.html" -->
<%@ include file="include/bottom.html" %>
<!--底部 结束-->
<script src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">



</script>
</body>
</html>
