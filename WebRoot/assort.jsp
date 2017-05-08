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
	<title>分类</title>
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
<header class="mui-bar mui-bar-nav" id="header">
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
<div id="main" class="mui-clearfix">
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
						<a href="javascript:;"><i class="iconfont">&#xe616;清除搜索历史</i></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="contaniner clearfloat">
		<aside class="assort">
			<ul>
				<li class="active">
					<span>黑猪</span>
				</li>
				<li>
					<span>跑山猪</span>
				</li>
				<li>
					<span>藏香猪</span>
				</li>
				<li>
					<span>雏鹰黑猪</span>
				</li>
			</ul>
		</aside>

		<section class="assort-cont clearfloat">
			<div class="sideMenu clearfloat">
				<h3><em></em>黑猪<span style="margin-left: 10px;color: #666666;">生鲜冻肉</span></h3>
				<div class="slist clearfloat box-s">
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rou1.jpg"/>
							<p class="tit">猪肚</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rou2.jpg"/>
							<p class="tit">寸骨</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rou3.jpg"/>
							<p class="tit">大排肌肉</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rou4.jpg"/>
							<p class="tit">带筋猪蹄</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rou5.jpg"/>
							<p class="tit">带皮掏骨后肘</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rou6.jpg"/>
							<p class="tit">带皮五花肉</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rou7.jpg"/>
							<p class="tit">带肉前腿骨</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rou8.jpg"/>
							<p class="tit">后腿肌肉</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rou9.jpg"/>
							<p class="tit">月牙骨</p>
						</a>
					</div>
				</div>
				<h3><em></em>黑猪<span style="margin-left: 10px;color: #666666;">肉制熟食</span></h3>
				<div class="slist clearfloat box-s">
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rous1.jpg"/>
							<p class="tit">香卤肘片</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rous2.jpg"/>
							<p class="tit">骨肽香猪心</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rous3.jpg"/>
							<p class="tit">骨肽香猪舌</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rous4.jpg"/>
							<p class="tit">香辣猪排骨</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rous5.jpg"/>
							<p class="tit">香辣黑猪肉</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rous6.jpg"/>
							<p class="tit">香辣猪尾</p>
						</a>
					</div>
				</div>
				<h3><em></em>黑猪<span style="margin-left: 10px;color: #666666;">高端发酵火腿</span></h3>
				<div class="slist clearfloat box-s">
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rouss1.jpg"/>
							<p class="tit">高端发酵火腿</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rouss2.jpg"/>
							<p class="tit">高端发酵火腿</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rouss3.jpg"/>
							<p class="tit">高端发酵火腿</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rouss4.jpg"/>
							<p class="tit">高端发酵火腿</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rouss5.jpg"/>
							<p class="tit">高端发酵火腿</p>
						</a>
					</div>
					<div class="list clearfloat fl">
						<a href="proDetail.jsp">
							<img src="upload/rouss6.jpg"/>
							<p class="tit">高端发酵火腿</p>
						</a>
					</div>

				</div>
			</div>
		</section>
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
				<a href="pcenter.jsp">
					<img src="img/footer004.png"/>
					<p>个人中心</p>
				</a>
			</li>
		</ul>
</footer>
</body>
<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
<script src="js/jquery.SuperSlide.2.1.js" type="text/javascript"></script>
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
<script type="text/javascript">
	jQuery(".sideMenu").slide({
		titCell:"h3",
		targetCell:".slist",
		effect:"slideDown",
		delayTime:300 ,
		triggerTime:150,
		defaultPlay:true,
		returnDefault:false,
		trigger:"click"
	});
</script>
</html>
