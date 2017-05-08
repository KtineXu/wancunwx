<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>签到送红包</title>
	<link rel="stylesheet" type="text/css" href="css/public/reset.css">
	<link rel="stylesheet" type="text/css" href="css/public/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/public/function.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<script type="text/javascript" src="js/model/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="js/model/jquery.SuperSlide.2.1.1.source.js"></script>
	<script type="text/javascript" src="js/model/html5.js"></script>
	<script type="text/javascript" src="js/public.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
</head>
<body class="g-body-in">
	<div class="g-wrap">
		<section class="h15"></section>
		
		<section class="main-sec">
			<div class="m-title"><h3>活动说明</h3></div>
			<div class="einfo">
				<p>活动时间：7月1日-7月30日</p>
				<p>每日签到可获1次抽奖机会</p>
				<p>每日邀请好友参与可获1次抽奖机会</p>
			</div>
		</section>
		
		<section class="main-sec pt5 main-wheel" style="margin-top: 5%;">
			<div class="big-border">
				<div class="small-border g9">

					<div class="shan">
						<span>现金红包</span>
						<img src="images/money1.png" width="30%">
					</div>

					<div class="shan">
						<span>热卖单品</span>
						<img src="images/money2.png" width="30%">
					</div>

					<div class="shan">
						<span>热卖单品</span>
						<img src="images/money3.png" width="30%">
					</div>

					<div class="shan">
						<span>热卖单品</span>
						<img src="images/money4.png" width="30%">
					</div>
					
					<div class="shan">
						<span>现金红包</span>
						<img src="images/money1.png" width="30%">
					</div>

					<div class="shan">
						<span>热卖单品</span>
						<img src="images/money5.png" width="30%">
					</div>

					<div class="shan">
						<span>热卖单品</span>
						<img src="images/money6.png" width="30%">
					</div>

					<div class="shan">
						<span>热卖单品</span>
						<img src="images/money7.png" width="30%">
					</div>

					<div class="shan">
						<span>热卖单品</span>
						<img src="images/money8.png" width="30%">
					</div>


					<img src="images/middle.png" width="50%" class="middle">
				</div>
			</div>
		</section>

		

		<section class="main-sec loptop">
			<div class="m-title"><h3>中奖纪录</h3></div>
			<dl class="peolist">
				<dd>
					<img src="images/facepic.jpg" width="20%">
					<div class="right">
						<span><h2>雨中漫步</h2><em>7月1日 21:25</em></span>
						<p>跪谢老板打赏跪谢老板</p>
					</div>
				</dd>

				<dd>
					<img src="images/facepic.jpg" width="20%">
					<div class="right">
						<span><h2>雨中漫步</h2><em>7月1日 21:25</em></span>
						<p>跪谢老板打赏</p>
					</div>
				</dd>

				<dd>
					<img src="images/facepic.jpg" width="20%">
					<div class="right">
						<span><h2>雨中漫步</h2><em>7月1日 21:25</em></span>
						<p>跪谢老板打赏</p>
					</div>
				</dd>
			</dl>

		</section>

		<script type="text/javascript">
			jQuery(".loptop").slide( {mainCell:"dl",autoPage:true,effect:'topLoop',autoPlay:true,scroll:3,vis:3,easing:'swing',delayTime:500, interTime:3000, pnLoop:true});

		</script>		

	</div>

	
	
	<div class="dialog theForm">
		<div class="d-main">
			<p>恭喜你,抽奖成功,获得了热卖单品</p>
			<div class="btn-w">
				<a class="btn btn-lang close" href="javascript:;">确定</a>
			</div>
		</div>
	</div>



</body>

<script type="text/javascript">
	var valueJson = {
		'wheelBody' : $('.big-border'), //转盘主体
		'wheelSmall' : $('.small-border'), //转盘内部
		'starsNum' : 16, //转盘边缘小黄点个数

		'starsPostion' : [[50, 0.5], [70, 6], [84.5, 18], [92.5, 32], [95.5, 50], [91, 68], [81.5, 81.5], [68, 91], [50, 95.5], [32, 92.5], [16, 83], [6, 70], [0.5, 50], [3.5, 32], [14, 15], [27, 5.5]], //小圆点坐标
		'actionRan' : 7200, //转盘转动弧度
		'theOnce' : 0, //初始化转盘第一个
		'startBtn' : $('.middle'), //开始按钮

		//需要后台传值的参数
		'clickAjaxUrl' : 'www.baidu.com', //点击抽奖获取信息的交互的ajax
		'is_gz' : 1, //是否开启关注 1开 2 关
		'is_follow' : 1 //是否关注

 	};
	indexApp.init(valueJson).wheelStart(); //应用开始
</script>
</html>
