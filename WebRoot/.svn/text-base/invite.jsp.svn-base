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
    <title>人才招聘</title>
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
        <!--#include file="include/beside02.html" -->
        <%@include file="include/beside02.html" %>
        <!--左侧 结束-->

        <div class="news-rt">
            <section class="nav-news">
                <a href="index.shtml"><i><img src="images/index-icon.png"></i>首页&nbsp;></a>
                <span class="message">人才招聘</span>
            </section>
            <div class="join-us">
                <b class="mag"><img src="images/side26.jpg"></b>
                <h3>来这里，我们给你<b>上升空间！</b></h3>
                <ul>
                
                
                  <c:forEach var="i" items="${list}" varStatus="a">
                    <li>
                        <h6><i>${a.index+1}</i>${i.title}<span>${i.imgURL }</span></h6>
                        <p>${i.detail}</p>
                        <em></em>
                    </li>
                   </c:forEach>
                    <!--<li>
                        <h6><i>01</i>药品检验员 / 测试员<span>shichangyingxiaoyuan</span></h6>
                        <p>□岗位职责：商业客户的开发、维护；广告设计意思的转达和设计的策划;广告内容的审核;广告设计稿的审核和客户复核等一系列的工作任务。 </p>
                        <p>□要求：大专以上学历,年龄22-26岁,男性,人品好,做事仔细、认真,有较强的团队协作精神及创新能力,责任心强。</p>
                        <em></em>
                    </li>
                    <li>
                        <h6><i>02</i>设备部副经理<span>shichangyingxiaoyuan</span></h6>
                        <p>□岗位职责：商业客户的开发、维护；广告设计意思的转达和设计的策划;广告内容的审核;广告设计稿的审核和客户复核等一系列的工作任务。 </p>
                        <p>□要求：大专以上学历,年龄22-26岁,男性,人品好,做事仔细、认真,有较强的团队协作精神及创新能力,责任心强。</p>
                        <em></em>
                    </li>
                    <li>
                        <h6><i>03</i>质量部副经理<span>shichangyingxiaoyuan</span></h6>
                        <p>□岗位职责：商业客户的开发、维护；广告设计意思的转达和设计的策划;广告内容的审核;广告设计稿的审核和客户复核等一系列的工作任务。 </p>
                        <p>□要求：大专以上学历,年龄22-26岁,男性,人品好,做事仔细、认真,有较强的团队协作精神及创新能力,责任心强。</p>
                        <em></em>
                    </li>
                    <li>
                        <h6><i>04</i>行政办副经理<span>shichangyingxiaoyuan</span></h6>
                        <p>□岗位职责：商业客户的开发、维护；广告设计意思的转达和设计的策划;广告内容的审核;广告设计稿的审核和客户复核等一系列的工作任务。 </p>
                        <p>□要求：大专以上学历,年龄22-26岁,男性,人品好,做事仔细、认真,有较强的团队协作精神及创新能力,责任心强。</p>
                        <em></em>
                    </li>
                    <li>
                        <h6><i>05</i>外贸业务员<span>shichangyingxiaoyuan</span></h6>
                        <p>□岗位职责：商业客户的开发、维护；广告设计意思的转达和设计的策划;广告内容的审核;广告设计稿的审核和客户复核等一系列的工作任务。 </p>
                        <p>□要求：大专以上学历,年龄22-26岁,男性,人品好,做事仔细、认真,有较强的团队协作精神及创新能力,责任心强。</p>
                        <em></em>
                        <b></b>
                    </li>
                -->
                </ul>
                <div class="join-sale">
                    <h6>二、试用期福利待遇：</h6>
                    <p> 1、	以上职位试用期1500—3000元。时间1—3个月，最短一个月，最长3个月。</p>
                    <p>2、	免费提供中晚餐及宿舍，宿舍有空调、彩电及基本住宿家具，电费自己出。</p>
                    <h6>三、转正后的福利待遇：</h6>
                    <p>1、	待遇依目前公司相关部门相关岗位的待遇执行，（3万—30万元每年不等）</p>
                    <p>2、	免费提供中晚餐及宿舍，宿舍有空调、彩电，电费自己出。</p>
                    <p>3、	缴纳“五险”：养老保险、医疗保险、失业保险、工伤保险和生育保险。</p>
                    <p>4、	另享受正常劳保、节日慰问品、工龄工资、年终奖、生日蛋糕等各项正式员工福利。</p>
                    <p>联系方式：华阴市锦前程药业有限公司 人力资源部 网址：www.jqcpharm.com www.chinajqc.com </p>
                    <p>联系人：韩永顺（手机：18992376516）</p>
                    <p>张洁 电话：0913-4356078、0913-4356999转8022 邮 箱：shun@jqcpharm.com</p>
                </div>
            </div>

        </div>
    </div>
</section>
<!--底部 开始-->
<!--#include file="include/bottom.html" -->
<%@ include file ="include/bottom.html" %>
<!--底部 结束-->
<script src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
    $(".beside>.list-side>li").eq(2).addClass("on");
   $(".join-us ul li:last-child").css("border-bottom","1px solid #aeaaa9");
</script>
</body>
</html>
