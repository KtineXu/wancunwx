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
    <title>积分商城</title>
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
<script type="text/javascript">
	$(window).load(function(){
		$(".loading").addClass("loader-chanage")
		$(".loading").fadeOut(300)
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
		<header class="mui-bar mui-bar-nav report-header box-s" id="header">
			<a href="javascript:history.go(-1)"><i class="iconfont icon-fanhui fl"></i></a>
			<p>积分商城</p>
	    </header>
	    <div id="main" class="mui-clearfix">
	    	<div class="mui-content">
		        <div class="banner swiper-container">
		            <div class="swiper-wrapper">
		                <div class="swiper-slide"><a href="luck-draw.html"><img class="swiper-lazy" data-src="upload/banner2.jpg" alt=""></a></div>
		                <div class="swiper-slide"><a href="luck-draw.html"><img class="swiper-lazy" data-src="upload/banner.jpg" alt=""></a></div>
		                <div class="swiper-slide"><a href="luck-draw.html"><img class="swiper-lazy" data-src="upload/banner3.jpg" alt=""></a></div>
		            </div>
		            <div class="swiper-pagination"></div>
		        </div>
				<div class="integral-top clearfloat">
					<div class="list fl">
						<a href="report.jsp">
							<img src="upload/jf-icon1.png"/>
							<p class="tit">签到</p>
						</a>
					</div>
					<div class="list fl">
						<a href="coupon.jsp">
							<img src="upload/jf-icon2.png"/>
							<p class="tit">优惠券</p>
						</a>
					</div>
					<div class="list fl">
						<a href="record.jsp">
							<img src="upload/jf-icon3.png"/>
							<p class="tit">兑换记录</p>
						</a>
					</div>
					<div class="list fl">
						<a href="allRecord.jsp">
							<img src="upload/jf-icon4.png"/>
							<p class="tit">所有兑换项</p>
						</a>
					</div>
				</div>
				<div class="health clearfloat">
					<div class="htop clearfloat">
						热门兑换
					</div>
				</div>
				<div class="integral-list clearfloat box-s">
					<div class="list clearfloat">
						<div class="tu">
							<img src="upload/rou1.jpg"/>
							<span class="opa5"></span>
							<p>夏季女装性感</p>
						</div>
						<p class="price ta-c">原价￥118.00</p>
						<p class="duihuan ta-c">
							<span>500</span>
							积分兑换
						</p>
						<a href="integralDetail.jsp" class="dh-btn">
							兑换
						</a>
					</div>
					<div class="list clearfloat">
						<div class="tu">
							<img src="upload/rou2.jpg"/>
							<span class="opa5"></span>
							<p>夏季女装性感</p>
						</div>
						<p class="price ta-c">原价￥118.00</p>
						<p class="duihuan ta-c">
							<span>500</span>
							积分兑换
						</p>
						<a href="integralDetail.jsp" class="dh-btn">
							兑换
						</a>
					</div>
				</div>
				<div class="integral-list clearfloat box-s">
					<div class="list clearfloat">
						<div class="tu">
							<img src="upload/rou3.jpg"/>
							<span class="opa5"></span>
							<p>夏季女装性感</p>
						</div>
						<p class="price ta-c">原价￥118.00</p>
						<p class="duihuan ta-c">
							<span>500</span>
							积分兑换
						</p>
						<a href="integralDetail.jsp" class="dh-btn">
							兑换
						</a>
					</div>
					<div class="list clearfloat">
						<div class="tu">
							<img src="upload/rou4.jpg"/>
							<span class="opa5"></span>
							<p>夏季女装性感</p>
						</div>
						<p class="price ta-c">原价￥118.00</p>
						<p class="duihuan ta-c">
							<span>500</span>
							积分兑换
						</p>
						<a href="integralDetail.jsp" class="dh-btn">
							兑换
						</a>
					</div>
				</div>
				<div class="integral-list clearfloat box-s">
					<div class="list clearfloat">
						<div class="tu">
							<img src="upload/rou5.jpg"/>
							<span class="opa5"></span>
							<p>夏季女装性感</p>
						</div>
						<p class="price ta-c">原价￥118.00</p>
						<p class="duihuan ta-c">
							<span>500</span>
							积分兑换
						</p>
						<a href="integralDetail.jsp" class="dh-btn">
							兑换
						</a>
					</div>
					<div class="list clearfloat">
						<div class="tu">
							<img src="upload/rou6.jpg"/>
							<span class="opa5"></span>
							<p>夏季女装性感</p>
						</div>
						<p class="price ta-c">原价￥118.00</p>
						<p class="duihuan ta-c">
							<span>500</span>
							积分兑换
						</p>
						<a href="integralDetail.jsp" class="dh-btn">
							兑换
						</a>
					</div>
				</div>
		    </div>
			<footer class="page-footer fixed-footer" id="footer">
				<ul>
					<li class="active">
						<a href="index.jsp">
							<img src="img/footer001.png"/>
							<p>积分商城</p>
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
						<a href="pcenter.jsp">
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
</html>

