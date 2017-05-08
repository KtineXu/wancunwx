<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>订单列表</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="chemguanpanel/css/bootstrap.min.css" />
<link rel="stylesheet" href="chemguanpanel/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="chemguanpanel/css/fullcalendar.css" />
<link rel="stylesheet" href="chemguanpanel/css/matrix-style.css" />
<link rel="stylesheet" href="chemguanpanel/css/matrix-media.css" />
<link href="chemguanpanel/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="chemguanpanel/css/jquery.gritter.css" />
<script type="text/JavaScript">
 		function check(){
 		var oInput=document.getElementsByName("map");
 		for (var i=0;i<oInput.length;i++)
 			oInput[i].checked=document.getElementById("all").checked;
 		}
 		function del(){
			var fdel=window.confirm("是否确定删除？");
			  if (fdel)
			  { 
			return true;
		}
			  else
			  {return false; } 
 		}
 		
 		function deleteInfo(){
 		var oInput=document.getElementsByName("map");
 		var count=0;
 		for (var i=0;i<oInput.length;i++)
 			if(oInput[i].checked){
 			count+=1;
 			}
 		if(count==0){
 		alert("未选择删除数据");
 		return false;
 		}else{
 		var del=window.confirm("是否确定删除选择的数据？");
			  if (del)
			  { 
			return true;
		}
			  else
			  {return false; } 
 		}			
 		}
 		
 		function searchname(){
 		var name=document.getElementById("searchvname").value;
 		if(name==""){
 		alert("请输入得票人姓名");
 		}else{
 			window.location.href="searchvotename.do?name="+name; 
 		}
 		
 		}
 		
</script>
</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Chemguan Admin</a></h1>
</div>
<!--close-Header-part--> 
<!--top-Header-menu-->
<jsp:include page="heads.jsp"></jsp:include>
<!--close-top-Header-menu-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 管理功能</a>
  <ul>
	<li class="active"><a href="allvote.do"><i class="icon icon-home"></i> <span>订单列表</span></a> 
		
	</li>
	
  </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs--><!--
  <div id="content-header">
    <div id="breadcrumb"> <a href="chemguanpanel/index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
--><!--End-breadcrumbs-->
<div class="widget-box">
          <div class="widget-title"> <span class="icon">
            <input type="checkbox" id="all" name="title-checkbox" onclick="check();"/>
            </span>
            <h5>全选</h5>
                      
            
         
            
            <a href="chemguanpanel/addOrderDetil.jsp">
            <button  class="btn btn-info" type="button" style="float: right; margin-top: 3px;margin-right: 3px;">添加信息</button></a>
          </div>
          
          <form action="deleteOrderDetil.do?orderID=${i.orderID}" method="post">
           
          <div class="widget-content nopadding">
          
            <table class="table table-bordered table-striped with-check">
              <thead>
                <tr>
                  <th><i class="#"></i></th>
                  <th>订单ID</th>
                  <th>产品类型</th>
                  <th>产品名称</th> 
                  <th>产品金额</th>
                  <th>顾客姓名</th>
                  <th>量体师姓名</th>                                                                                                                           
                  <th>操作</th>
                </tr>
              </thead>
      <c:forEach var="i" items="${list}">
      <tr style="font-size: 12px;">
      <td><input type="checkbox" value="${i.id}" name="map" /></td>
      <td>${i.orderID}</td> 
      <c:if test ="${i.type == 1}">
      	<td>商务套西</td> 
      </c:if> 
      <c:if test ="${i.type == 2}">
      	<td>礼服套西</td> 
      </c:if> 
      <c:if test ="${i.type == 3}">
      	<td>休闲单西</td> 
      </c:if> 
      <c:if test ="${i.type == 4}">
      	<td>长袖衬衫</td> 
      </c:if> 
      <c:if test ="${i.type == 5}">
      	<td>短袖衬衫</td> 
      </c:if> 
      <c:if test ="${i.type == 6}">
      	<td>大衣</td> 
      </c:if> 
      <c:if test ="${i.type == 7}">
      	<td>马甲</td> 
      </c:if> 
      <c:if test ="${i.type == 8}">
      	<td>西裤</td> 
      </c:if>         
     
      <td>${i.productName}</td> 
      <td>${i.price}</td>
      <td>${i.customerName}</td>  
      <td>${i.designerName}</td> 
                        
     <td style="text-align: center;">
     <a href="deleteOrderDetilById.do?id=${i.id}" onclick="return del()">删除</a></td>    
     </tr>
     </c:forEach>
            </table>
            </div>
	<c:if test="${empty list}">未查询到数据</c:if>
        
    
	</form>
       	 	<!-- 分页按钮部分 -->
       	 	<c:if test="${requestScope.sname==null}">
       	 	
       	 	<div class="fg-toolbar ui-toolbar ui-widget-header ui-corner-bl ui-corner-br ui-helper-clearfix">
       	 	<div id="DataTables_Table_0_filter" class="dataTables_filter">
</div>
	       	 	<div id="DataTables_Table_0_paginate" class="dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers">
		       	 	<a href="allvote.do?pageCount=1" id="DataTables_Table_0_first" tabindex="0" class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default">首页</a>
	       	 	<span>
	       	 	<c:forEach begin="1" end="${requestScope.pagecount}" var="v">
		       	 	<a href="allvote.do?pageCount=${v }" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
		       	 	</c:forEach>
	       	 	</span>
		       	 	<a href="allvote.do?pageCount=${requestScope.pagecount}" id="DataTables_Table_0_last" tabindex="0" class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default">尾页</a>
	       	 	</div>
       	 	</div>
       	 	</c:if>
       	 	<c:if test="${requestScope.sname!=null}">
       	 	<div class="fg-toolbar ui-toolbar ui-widget-header ui-corner-bl ui-corner-br ui-helper-clearfix">
       	 	<div id="DataTables_Table_0_filter" class="dataTables_filter">
</div>
	       	 	<div id="DataTables_Table_0_paginate" class="dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers">
		       	 	<a href="searchvotename.do?name=${requestScope.sname}&pageCount=1" id="DataTables_Table_0_first" tabindex="0" class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default">首页</a>
	       	 	<span>
	       	 	<c:forEach begin="1" end="${requestScope.pagecount}" var="v">
		       	 	<a href="searchvotename.do?name=${requestScope.sname}&pageCount=${v }" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
		       	 	</c:forEach>
	       	 	</span>
		       	 	<a href="searchvotename.do?name=${requestScope.sname}&pageCount=${requestScope.pagecount}" id="DataTables_Table_0_last" tabindex="0" class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default">尾页</a>
	       	 	</div>
       	 	</div>
       	 	</c:if>
       	 	<!--分页结束 -->
       	 	</div>


</div>

<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
  <div id="footer" class="span12"> 2016 @ <a href="http://www.chemguan.com" target="_blank">Chemguan</a> Admin V1.0 <a href="http://www.chemguan.com" target="_blank">贞观互联</a> 版权所有 </div>
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
