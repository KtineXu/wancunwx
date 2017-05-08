<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>首页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <script src="js/rem.js"></script> 
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/page.css"/>
    <link rel="stylesheet" type="text/css" href="css/all.css"/>
    <link rel="stylesheet" type="text/css" href="css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/loading.css"/>
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<script type="text/javascript">
	$(window).load(function(){
		$(".loading").addClass("loader-chanage")
		$(".loading").fadeOut(100)
	})
</script>
</head>
<!--loading页开始-->
<div class="loading">
	<div class="loader">
        <div class="loader-inner pacman">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
        </div>
	</div>
</div>
<!--loading页结束-->
	<body>
		<header class="mui-bar mui-bar-nav" id="header">
			<a class="btn" href="#">
	            <i class="iconfont icon-saomiao"></i>
	            <p>扫描</p>
	        </a>
	        <div class="top-sch-box flex-col">
	            <div class="centerflex">
	                <i class="fdj iconfont icon-sousuo"></i>
	                <div class="sch-txt">搜索品牌、商品</div>
	            </div>
	        </div>
	        <a class="btn" href="#">
	            <i class="iconfont icon-fenlei1"></i>
	            <p>分类</p>
	            <span>2</span>
	        </a>
	    </header>
	    <div id="main" style="padding-top: 49px;padding-bottom: 69px;">
	 	<!-- 搜索层 -->
	    <div class="pop-schwrap">
	        <div class="ui-scrollview">
	            <div class="mui-bar mui-bar-nav clone">
	                <a class="btn btn-back" href="javascript:;"></a>
	                <div class="top-sch-box flex-col">
	                    <div class="centerflex">
	                        <input class="sch-input mui-input-clear" type="text" name="" id="" placeholder="搜索品牌、商品" />
	                    </div>
	                </div>
	                <a class="mui-btn mui-btn-primary sch-submit" href="#">搜索</a>
	            </div>
	            <div class="scroll-wrap">
	                <div class="mui-scroll">
	                    <div class="sch-cont">
	                        <div class="section ui-border-b">
	                            <div class="tit"><i class="iconfont icon-hot"></i>热门搜索</div>
								<div class="tags">
									<span class="tag">猪肚</span><span class="tag">寸骨</span><span class="tag">大排肌肉</span><span class="tag">带筋猪蹄</span>
									<span class="tag actice">带皮掏骨后肘</span><span class="tag">带皮五花肉</span><span class="tag">带肉前腿骨</span><span class="tag">后腿肌肉</span>
								</div>
	                        </div>
	                        <div class="section">
	                            <div class="tit"><i class="iconfont icon-time"></i>最近搜索</div>
								<div class="tags">
									<span class="tag">香卤肘片</span><span class="tag">好名字</span>
								</div>
	                        </div>
	                    </div>
	                    <div class="sch-clear">
	                        <a href="javascript:;"><i class="iconfont icon-shanchu">清除搜索历史</i></a>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    
		<div class="mui-content">
	        <div class="banner swiper-container">
	            <div class="swiper-wrapper">
	                <div class="swiper-slide">
						<a href="javascript:void(0)"><img class="swiper-lazy" data-src="upload/banner2.jpg" alt=""></a>
					</div>
	                <div class="swiper-slide">
						<a href="javascript:void(0)"><img class="swiper-lazy" data-src="upload/banner.jpg" alt=""></a>
					</div>
	                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="upload/banner4.jpg" alt=""></a></div>
	            </div>
	            <div class="swiper-pagination"></div>
	        </div>
			<div class="mui-top clearfloat">
				<div class="list fl">
					<a href="report.jsp">
						<img src="upload/ylh-icon1.png"/>
						<p class="tit">每日签到</p>
					</a>
				</div>

				<div class="list fl">
					<a href="integral.jsp">
						<img src="upload/ylh-icon2.png"/>
						<p class="tit">积分商城</p>
					</a>
				</div>
				<div class="list fl">
					<a href="join.jsp">
						<img src="upload/ylh-icon3.png"/>
						<p class="tit">线下体验馆</p>
					</a>
				</div>
			</div>
			
			<div class="news clearfloat">
				<div class="left fl clearfloat">
					<img src="img/rmen.png"/>
				</div>
				<div class="right fl clearfloat box-s">
					<div class="slider autoplay">
						<div>这里是新闻资讯内容可以手滑滚动</div>
						<div>这里是新闻资讯内容可以手滑滚动</div>
						<div>这里是新闻资讯内容可以手滑滚动</div>
						<div>这里是新闻资讯内容可以手滑滚动</div>
						<div>这里是新闻资讯内容可以手滑滚动</div>
						<div>这里是新闻资讯内容可以手滑滚动</div>
					</div>
				</div>
			</div>
			
			<div class="soffer clearfloat">
				<div class="list fl">
					<a href="offer.jsp">
						<p class="tit">特价促销</p>
						<p class="fu-tit">天天特价，爽不停</p>
						<img src="upload/rou1.jpg"/>
					</a>
				</div>
				<div class="list fl">
					<a href="#">
						<p class="tit">人气热卖</p>
						<p class="fu-tit">热卖单品</p>
						<img src="upload/rou2.jpg"/>
					</a>
				</div>
				<div class="list fl">
					<a href="#">
						<p class="tit">新用户专享</p>
						<p class="fu-tit">开启完美的购物体验</p>
						<img src="upload/rou3.jpg"/>
					</a>
				</div>
			</div>
			<div class="health clearfloat">
				<div class="htop clearfloat">
					每日必看
				</div>
			</div>
			<div class="pension clearfloat">
				<div class="list fl">
					<a href="proDetail.jsp">
						<img src="upload/rous1.jpg"/>
						<p class="tit">黑猪月牙肉</p>
						<p class="fu-tit">抢购价：<span>￥298.00</span></p>
					</a>
				</div>
				<div class="list fl">
					<a href="proDetail.jsp">
						<img src="upload/rous2.jpg"/>
						<p class="tit">黑猪月牙肉</p>
						<p class="fu-tit">抢购价：<span>￥298.00</span></p>
					</a>
				</div>
				<div class="list fl">
					<a href="proDetail.jsp">
						<img src="upload/rous3.jpg"/>
						<p class="tit">黑猪月牙肉</p>
						<p class="fu-tit">抢购价：<span>￥298.00</span></p>
					</a>
				</div>
				<div class="list fl">
					<a href="proDetail.jsp">
						<img src="upload/rous4.jpg"/>
						<p class="tit">黑猪月牙肉</p>
						<p class="fu-tit">抢购价：<span>￥298.00</span></p>
					</a>
				</div>
			</div>


	</div>
   

    <footer class="page-footer fixed-footer" id="footer">
		<ul>
			<li class="active">
				<a href="index.jsp">
					<img src="img/footer001.png"/>
					<p>首页</p>
				</a>
			</li>
			<li>
				<a href="assort.jsp">
					<img src="img/footer002.png"/>
					<p>分类</p>
				</a>
			</li>
			<li>
				<a href="shopcar.jsp">
					<img src="img/footer003.png"/>
					<p>购物车</p>
				</a>
			</li>
			<li>
				<a href="GoPersonalCenter.do">
					<img src="img/footer004.png"/>
					<p>个人中心</p>
				</a>
			</li>
		</ul>
	</footer>
	</div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
	<script src="slick/slick.js" type="text/javascript" ></script>
	<!--插件-->
	<link rel="stylesheet" href="css/swiper.min.css">
	<script src="js/swiper.jquery.min.js"></script>
	<!--插件-->
	<script src="js/global.js"></script>
	<script >
	    $(function () {
	        var banner = new Swiper('.banner',{
	            autoplay: 5000,
	            pagination : '.swiper-pagination',
	            paginationClickable: true,
	            lazyLoading : true,
	            loop:true
	        });
	
	         mui('.pop-schwrap .sch-input').input();
	        var deceleration = mui.os.ios?0.003:0.0009;
	         mui('.pop-schwrap .scroll-wrap').scroll({
	                bounce: true,
	                indicators: true,
	                deceleration:deceleration
	        });
	        $('.top-sch-box .fdj,.top-sch-box .sch-txt,.pop-schwrap .btn-back').on('click',function () {
	            $('html,body').toggleClass('holding');
	            $('.pop-schwrap').toggleClass('on');
	            if($('.pop-schwrap').hasClass('on')) {;
	                $('.pop-schwrap .sch-input').focus();
	            }
	        });
	
	    });
	</script>
	<!--新闻资讯滚动-->
	<script type="text/javascript">
		$('.autoplay').slick({
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
		});
	</script>
	<!--商品图片滚动-->
	<script type="text/javascript">
		$('.filtering').slick({
		  slidesToShow: 3,
		  slidesToScroll: 1
		});
	</script>
</html>
