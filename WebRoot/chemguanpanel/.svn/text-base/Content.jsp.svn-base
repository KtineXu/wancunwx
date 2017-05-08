<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <base href="<%=basePath%>">
    
    <title>内容管理</title>   
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="chemguanpanel/css/bootstrap.min.css" />
	<link rel="stylesheet" href="chemguanpanel/css/bootstrap-responsive.min.css" />
	<link rel="stylesheet" href="chemguanpanel/css/fullcalendar.css" />
	<link rel="stylesheet" href="chemguanpanel/css/matrix-style.css" />
	<link rel="stylesheet" href="chemguanpanel/css/matrix-media.css" />
	<link href="chemguanpanel/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link rel="stylesheet" href="chemguanpanel/css/jquery.gritter.css" />
  </head>
  
  <body>
	<!--Header-part-->
	<div id="header">
	  <h1><a href="chemguanpanel/index.jsp">Chemguan Admin</a></h1>
	</div>
	
	<!--top-Header-menu-->
	<!--close-top-Header-menu-->
	<jsp:include page="heads.jsp"></jsp:include>
	<div class="copyrights">Maker from <a href="http://www.cssmoban.com/" >贞观互联</a></div>
	<!--sidebar-menu-->
	<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 管理功能</a>	
		<ul>
			<!--<li class="submenu"><a href="#"><span>首页模块</span></a>
		      <ul>		        
		        <li><a href="findAllLun.do?flag=1">轮播图</a></li>	
		        <li><a href="findAllCmn.do?flag=2">展示内容</a></li>		       	      
		      </ul>
		    </li>	    
		    --><li class=""><a title=""href="findAllProducts.do"> <span class="text">产品管理</span></a><li>
    		<li class=""><a title="" href="findAllCustomer.do"> <span class="text">顾客管理</span></a><li>
		    <li class=""><a title="" href="findAllOrders.do"><span class="text">订单管理</span></a></li>
		    <li class=""><a title="" href="findAllCustomer.do?typeID=2"><span class="text">量体师管理</span></a></li>
		    <li class=""><a title="" href="findAllNews.do"><span class="text">信息管理</span></a></li>
		    <li class=""><a title="" href="findWealth.do"><span class="text">财富列表</span></a></li>
		    <li class=""><a title="" href="findAllCustomer.do?typeID=3"><span class="text">商铺管理</span></a></li>
		    <li class=""><a title="" href="findAllWorks.do"><span class="text">会员作品</span></a></li>	
		   	   							
		</ul>
	
	</div>
	<!--++++++++++++++      左                标                        签              END       ++++++++++++++-->
	<!--sidebar-menu-->
	
	<!--main-container-part-->
	<div id="content">
	<div id="content-header">
    <div id="breadcrumb"> <a href="chemguanpanel/index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
	<h3>【内容管理】</h3>
	</div>
	
	<!--end-main-container-part-->
	
	<!--Footer-part-->
	
	<div class="row-fluid">
	  <div id="footer" class="span12"> 2016 &copy; chemguan Admin. More Templates 贞观互联管理系统</div>
	</div>
	
	<!--end-Footer-part-->
	
	<script src="chemguanpanel/js/excanvas.min.js"></script> 
	<script src="chemguanpanel/js/jquery.min.js"></script> 
	<script src="chemguanpanel/js/jquery.ui.custom.js"></script> 
	<script src="chemguanpanel/js/bootstrap.min.js"></script> 
	<script src="chemguanpanel/js/jquery.flot.min.js"></script> 
	<script src="chemguanpanel/js/jquery.flot.resize.min.js"></script> 
	<script src="chemguanpanel/js/jquery.peity.min.js"></script> 
	<script src="chemguanpanel/js/fullcalendar.min.js"></script> 
	<script src="chemguanpanel/js/matrix.js"></script> 
	<script src="chemguanpanel/js/matrix.dashboard.js"></script> 
	<script src="chemguanpanel/js/jquery.gritter.min.js"></script> 
	<script src="chemguanpanel/js/matrix.interface.js"></script> 
	<script src="chemguanpanel/js/matrix.chat.js"></script> 
	<script src="chemguanpanel/js/jquery.validate.js"></script> 
	<script src="chemguanpanel/js/matrix.form_validation.js"></script> 
	<script src="chemguanpanel/js/jquery.wizard.js"></script> 
	<script src="chemguanpanel/js/jquery.uniform.js"></script> 
	<script src="chemguanpanel/js/select2.min.js"></script> 
	<script src="chemguanpanel/js/matrix.popover.js"></script> 
	<script src="chemguanpanel/js/jquery.dataTables.min.js"></script> 
	<script src="chemguanpanel/js/matrix.tables.js"></script> 
	
	<script type="text/javascript">
	  // This function is called from the pop-up menus to transfer to
	  // a different page. Ignore if the value returned is a null string:
	  function goPage (newURL) {
	
	      // if url is empty, skip the menu dividers and reset the menu selection to default
	      if (newURL != "") {
	      
	          // if url is "-", it is this page -- reset the menu:
	          if (newURL == "-" ) {
	              resetMenu();            
	          } 
	          // else, send page to designated URL            
	          else {  
	            document.location.href = newURL;
	          }
	      }
	  }
	
	// resets the menu selection upon entry to this page:
	function resetMenu() {
	   document.gomenu.selector.selectedIndex = 2;
	}
	</script>
  </body>
</html>
