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
    <title>个人中心</title>
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
		<div id="main" class="mui-clearfix">
			<!--pcenter top star-->
			<div class="ptop clearfloat">
				<div class="tu clearfloat">
					<img src="${user.headImgURL }"/>
				</div>
				<p class="tel ta-c">
					<h3>${user.nickName }</h3>
				</p>
				<p class="hyuan ta-c">
					普通会员
				</p>
				<p class="balance ta-c">
					<span>余额：800元</span>
					<span>积分：401</span>
				</p>
				<input type="button" name="" id="" value="充值" />
			</div>
			<!--pcenter top end-->
			
			<!--pcenter list star-->
			<div class="plist clearfloat">
				<ul>
					<li class="clearfloat">
						<a href="order.jsp">
							<i class="iconfont icon-quanbudingdan fl"></i>
							<p class="fl">我的订单</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="account.jsp">
							<i class="iconfont icon-icon fl"></i>
							<p class="fl">我的账户</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="coupon.jsp">
							<i class="iconfont icon-youhuiquan fl"></i>
							<p class="fl">我的优惠券</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="collection.jsp">
							<i class="iconfont icon-shoucang1 fl"></i>
							<p class="fl">我的收藏</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="myspred.do">
							<i class="iconfont icon-zhucetuiguang fl"></i>
							<p class="fl">推广赚钱</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="profit.jsp">
							<i class="iconfont icon-ruhezhuanqian fl"></i>
							<p class="fl">我的收益</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="team.jsp">
							<i class="iconfont icon-tuandui fl"></i>
							<p class="fl">我的团队</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="help.jsp">
							<i class="iconfont icon-wenti fl"></i>
							<p class="fl">帮助与反馈</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<a href="about.jsp">
							<i class="iconfont icon-guanyu fl"></i>
							<p class="fl">关于我们</p>
							<i class="iconfont icon-qianjin fr"></i>
						</a>
					</li>
					<li class="clearfloat">
						<i class="iconfont icon-kefu fl"></i>
						<p class="fl">客服电话</p>
						<p class="tel fr">24小时 热线  025-58327977</p>
					</li>
				</ul>
			</div>
			<!--pcenter list end-->
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
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
