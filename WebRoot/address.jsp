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
    <title>管理收货地址</title>
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
			<p>管理收货地址</p>
	    </header>
	    <div id="main" class="mui-clearfix contaniner">
	    	<div class="addlist clearfloat">
	    		<div class="top clearfloat box-s">
	    			<ul>
	    				<li>
	    					<span class="fl">张三</span>
	    					<span class="fr">1355555****</span>
	    				</li>
	    				<li>
	    					北京市朝阳区XXXXXXXXXXXXXXXXXXXXXXX
	    				</li>
	    			</ul>
	    		</div>
	    		<div class="bottom clearfloat box-s">
	    			<section class="shopcar clearfloat">
						<div class="shopcar-checkbox fl">
							<label for="shopcar" onselectstart="return false" class="shopcar-checkd"></label>
							<input type="checkbox" id="shopcar"/>
						</div>
						<span class="mradd fl">默认地址</span>
						<div class="right fr clearfloat">
							<a href="#" class="fr">
								<i class="iconfont icon-shanchu icon-shanchutwo"></i>
								删除
							</a>
							<a href="#" class="fr">
								<i class="iconfont icon-bianji bianjittt"></i>
								编辑
							</a>							
						</div>
					</section>
	    		</div>
	    	</div>
	    	
	    	<div class="addlist clearfloat">
	    		<div class="top clearfloat box-s">
	    			<ul>
	    				<li>
	    					<span class="fl">张三</span>
	    					<span class="fr">1355555****</span>
	    				</li>
	    				<li>
	    					北京市朝阳区XXXXXXXXXXXXXXXXXXXXXXX
	    				</li>
	    			</ul>
	    		</div>
	    		<div class="bottom clearfloat box-s">
	    			<section class="shopcar clearfloat">
						<div class="shopcar-checkbox fl">
							<label for="shopcar" onselectstart="return false"></label>
							<input type="checkbox" id="shopcar"/>
						</div>
						<span class="mradd smradd fl">设为默认</span>
						<div class="right fr clearfloat">
							<a href="#" class="fr">
								<i class="iconfont icon-shanchu icon-shanchutwo"></i>
								删除
							</a>
							<a href="#" class="fr">
								<i class="iconfont icon-bianji bianjittt"></i>
								编辑
							</a>							
						</div>
					</section>
	    		</div>
	    	</div>
	    	
	    	<div class="addlist clearfloat">
	    		<div class="top clearfloat box-s">
	    			<ul>
	    				<li>
	    					<span class="fl">张三</span>
	    					<span class="fr">1355555****</span>
	    				</li>
	    				<li>
	    					北京市朝阳区XXXXXXXXXXXXXXXXXXXXXXX
	    				</li>
	    			</ul>
	    		</div>
	    		<div class="bottom clearfloat box-s">
	    			<section class="shopcar clearfloat">
						<div class="shopcar-checkbox fl">
							<label for="shopcar" onselectstart="return false"></label>
							<input type="checkbox" id="shopcar"/>
						</div>
						<span class="mradd smradd fl">设为默认</span>
						<div class="right fr clearfloat">
							<a href="#" class="fr">
								<i class="iconfont icon-shanchu icon-shanchutwo"></i>
								删除
							</a>
							<a href="#" class="fr">
								<i class="iconfont icon-bianji bianjittt"></i>
								编辑
							</a>							
						</div>
					</section>
	    		</div>
	    	</div>
	    	
	    </div>
	    
	    <footer class="page-footer fixed-footer" id="footer">
	     	<a href="addAddress.jsp" class="address-add fl">
	     		添加新地址
	     	</a>
	    </footer>
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
