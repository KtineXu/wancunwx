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
    <title>充值</title>
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
			<p>充值</p>
	    </header>
	    <div id="main" class="mui-clearfix contaniner sorder">
	    	<div class="pay-method pay-methodtwo clearfloat">
    			<ul>
    				<li>请输入充值金额</li>
    			</ul>
    		</div>
	    	<div class="mpsw clearfloat box-s">
	    		<form action="" method="post">
	    			<input type="text" name="" id="" value="" placeholder="0" />
	    		</form>
	    	</div>
	    	<div class="pay-method pay-methodthree clearfloat">
    			<ul>
    				<li>请选择充值方式</li>
    			</ul>
    		</div>
    		<div class="addlist clearfloat">
	    		<div class="bottom clearfloat box-s">
	    			<section class="shopcar clearfloat">
						<div class="shopcar-checkbox fr">
							<label for="shopcar" onselectstart="return false" class="shopcar-checkd"></label>
							<input type="checkbox" id="shopcar"/>
						</div>
						<div class="sorder-list clearfloat fl">
							<i class="iconfont icon-weixinzhifu fl"></i>
							<div class="zuo fl">
								<p class="tit">微信</p>
								<p class="fu-tit">亿万用户的选择，更快更安全</p>
							</div>							
						</div>
					</section>
	    		</div>
	    		<div class="bottom clearfloat box-s">
	    			<section class="shopcar clearfloat">
						<div class="shopcar-checkbox fr">
							<label for="shopcar" onselectstart="return false"></label>
							<input type="checkbox" id="shopcar"/>
						</div>
						<div class="sorder-list clearfloat fl">
							<i class="iconfont icon-zhifubao fl"></i>
							<div class="zuo fl">
								<p class="tit">支付宝</p>
								<p class="fu-tit">客户端支持最便捷！可银行卡支付！</p>
							</div>							
						</div>
					</section>
	    		</div>
	    		<div class="bottom clearfloat box-s">
	    			<section class="shopcar clearfloat">
						<div class="shopcar-checkbox fr">
							<label for="shopcar" onselectstart="return false"></label>
							<input type="checkbox" id="shopcar"/>
						</div>
						<div class="sorder-list clearfloat fl">
							<i class="iconfont icon-yinxingqia fl"></i>
							<div class="zuo fl">
								<p class="tit">银行卡</p>
								<p class="fu-tit">需要先开通网银</p>
							</div>							
						</div>
					</section>
	    		</div>
	    	</div>
	    	<a href="#" class="tui-btn">
				下一步
			</a>
	    </div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
	<script type="text/javascript">
		$(".shopcar-checkbox label").on('touchstart',function(){
			if($(this).hasClass('shopcar-checkd')){
				$(".shopcar-checkbox label").removeClass("shopcar-checkd")
			}else{
				$(".shopcar-checkbox label").addClass("shopcar-checkd")
			}
		})
	</script>
</html>

