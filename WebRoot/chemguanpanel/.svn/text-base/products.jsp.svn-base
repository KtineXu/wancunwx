<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>产品管理</title>
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
 		
 		
 		function sccode(){
			var fdel=window.confirm("是否确定生成？");
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

 		function selectProduct(typeId){ 
 		        if(typeId == 0){
 		            window.location.href = "findAllProducts.do";
 		        }else{
 		            window.location.href = "findAllProducts.do?typeId="+typeId;
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
	<li ><a href="findAllProducts.do"><span>产品列表</span></a>	
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
          <div id="breadcrumb"> <a href="chemguanpanel/index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
          <div class="widget-title"> <span class="icon">
          
            <input type="checkbox" id="all" name="title-checkbox" onclick="check();"/>
            </span>
            
            <h5>全选</h5>   
            <a href="afterInsertProductUI.do">
            <button  class="btn btn-info" type="button" style="float: right; margin-top: 3px;margin-right: 3px;">添加商品</button></a>
           <!-- <button id="plcode" onclick="return sccode()" class="btn btn-info" type="button" style="float: right; margin-top: 3px;margin-right: 3px;">批量生成二维码</button>
            --> 
          </div>  
                  
            
          <form action="piliangcpQRCode.do" method="post" id="piliangcode">      
          <div class="widget-content nopadding">          
            <table class="table table-bordered table-striped with-check">
              <thead>
                <tr>
                  <th><i class="#"></i></th>                
                  <th>产品ID</th>
                  <th>产品名称</th>
                  <th>产品类别</th>
                  <th>产品价格</th>
                  <th>产品图片</th> 
                  <th>注册日期</th>
                  <th>操作</th>
                </tr>
              </thead>
      <c:forEach var="i" items="${pageBean.recordList}">
      <tr style="font-size: 12px;">
      	<td><input type="checkbox" value="${i.product.id}" name="map" /></td>    
      	<td>${i.product.id}</td>
      	<td>${i.product.productname}</td>
      	<td>${i.producttype.typename }</td>
     	<td>${i.product.price}</td>
      	<td><img src = "${i.image} " width = 100px height =100px/></td> 
      	<td>
      		<fmt:formatDate value="${i.product.adddate}" pattern="yyyy-MM-dd hh:mm:ss"/>
      	</td>            
     	<td style="text-align: center;">
     	<a href="afterUpdateProductUI.do?id=${i.product.id}">修改</a>|
    	<a href="afterDeleteProduct.do?id=${i.product.id}" onclick="return del()">删除</a>
    	</td> 
     </tr>
     </c:forEach>
            </table>
            
        </div>
       <c:if test="${!empty list}"><button class="btn btn-danger" style="margin-top: 5px;margin-left: 5px;" type="button" onclick="return deleteInfo()">删除</button></c:if>
</form>

       	 	<!-- 分页按钮部分 -->
<!-- ************************************************************************************************************************************************* -->
       	 	<!-- 分页按钮部分 -->
       	 			<!--分页信息-->
			<%@include file="pageView.jsp" %>
				<form action="afterFindProduct.do"  id="pageForm">
					<!--<input type="hidden" name="id"/>  -->
				</form>
 <!-- ************************************************************************************************************************************************* -->  	 	       	 	
       	 	<!--分页结束 -->
       	 	</div>


</div>
<input type="text" value="${requestScope.type}" id="typeid">




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

	$("#plcode").click(function(){
		alert("准备开始了");
		$("#piliangcode").submit();
		
	});




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
function pageto(){
 			var pagegoto=document.getElementById("pagego").value;
 			var typeid=document.getElementById("typeid").value;
 			if(${type==null}){
 			window.location.href="findAllProducts.do?pageCount="+pagegoto;
 			}else{
 			window.location.href="findAllProducts.do?pageCount="+pagegoto+"&typeId="+typeid;
 			}
 			
 		    
 			
 
 			
 			}
</script>
</body>
</html>
