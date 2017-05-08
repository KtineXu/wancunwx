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
 		
 		function selectType(state){
 			if(state != 0){
 				window.location.href = "findAllOrders.do?state="+state;
 			}else{
 			    window.location.href = "findAllOrders.do";
 			}
 			
 		}
 		
 		function search(){
 		   var name=document.getElementById("nick").value;
 		   if(name==""){
 		       alert("请输入查询信息");
 		   }else{
 			   window.location.href="findAllOrders.do?customerName="+name; 		
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
          <div id="breadcrumb"> <a href="chemguanpanel/index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
          <div class="widget-title"> <span class="icon">
            <input type="checkbox" id="all" name="title-checkbox" onclick="check();"/>
            </span>
            <h5>全选</h5>
            <select name = "state" onchange = "selectType(this.options[this.options.selectedIndex].value)">
             <c:if test="${state == null}">
                <option value = "0">请选择订单状态</option>
            	<option value = "1">进行中</option>
            	<option value = "2">发货中</option>
            	<option value = "3">已完成</option>
             </c:if>
             <c:if test="${state == 0}">
                <option value = "0" selected="selected">请选择订单状态</option>
            	<option value = "1">进行中</option>
            	<option value = "2">发货中</option>
            	<option value = "3">已完成</option>
             </c:if>
             <c:if test="${state == 1}">
                <option value = "0">请选择订单状态</option>
            	<option value = "1" selected="selected">进行中</option>
            	<option value = "2">发货中</option>
            	<option value = "3">已完成</option>
             </c:if>
             <c:if test="${state == 2}">
                <option value = "0">请选择订单状态</option>
            	<option value = "1">进行中</option>
            	<option value = "2" selected="selected">发货中</option>
            	<option value = "3">已完成</option>
             </c:if>
             <c:if test="${state == 3}">
                <option value = "0">请选择订单状态</option>
            	<option value = "1">进行中</option>
            	<option value = "2">发货中</option>
            	<option value = "3" selected="selected">已完成</option>
             </c:if>
            
            </select>
                      
            <input  id="nick" placeholder="订单所属顾客姓名" name="customerName" type="search"/>
            <button value="" onclick="search()">搜索</button>
         
            
            <a href="chemguanpanel/addOrder.jsp">
            <button  class="btn btn-info" type="button" style="float: right; margin-top: 3px;margin-right: 3px;">添加信息</button></a>
          </div>
          
          <form action="deletemorevote.do" method="post">
           
          <div class="widget-content nopadding">
          
            <table class="table table-bordered table-striped with-check">
              <thead>
                <tr>
                  <th><i class="#"></i></th>
                  <th>订单ID</th>
                  <th>订单编号</th>                                                                                     
                  <th>下订单时间</th> 
                  <th>顾客姓名</th> 
                  <th>订单积分</th> 
                  <th>订单金额</th> 
                  <th>收货地址</th>    
                  <th>订单状态</th> 
                  <th>操作</th>
                </tr>
              </thead>
      <c:forEach var="i" items="${list}">
      <tr style="font-size: 12px;">
      <td><input type="checkbox" value="${i.id}" name="map" /></td>
      <td>${i.id}</td>
      <td>${i.orderNumber}</td>             
      <td>${i.orderTime}</td> 
      <c:if test = "${i.state ==1}">
      	  <td>进行中</td>
      </c:if>
      <c:if test = "${i.state ==2}">
      	  <td>发货中</td>
      </c:if>
      <c:if test = "${i.state ==3}">
      	  <td>已完成</td>
       </c:if>
       <td>${i.customerName}</td> 
       <td>${i.totalPrice}</td>
       <td><img src = "${i.scpz}" width="50" height="50"></td>
     <td style="text-align: center;">
     <a href="findOsByOrderID.do?orderID=${i.id}" >查看物流信息</a>&nbsp;&nbsp;
     <a href="orderDetilById.do?id=${i.id}" >订单详情</a>&nbsp;&nbsp;
     
     <c:if test = "${i.state ==1}">
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=1" style="color:#28b779 ">进行中</a>&nbsp;&nbsp;
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=2">发货中</a>&nbsp;&nbsp;
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=3">已完成</a>
     </c:if>
   
     
     <c:if test = "${i.state ==2}">
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=1" >进行中</a>&nbsp;&nbsp;
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=2" style="color:#28b779 ">发货中</a>&nbsp;&nbsp;
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=3">已完成</a>
     </c:if>
     
     
     <c:if test = "${i.state ==3}">
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=1">进行中</a>&nbsp;&nbsp;
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=2">发货中</a>&nbsp;&nbsp;
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=3" style="color:#28b779 ">已完成</a>
     </c:if>
     
     <c:if test = "${i.state ==null}">
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=1">进行中</a>&nbsp;&nbsp;
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=2">发货中</a>&nbsp;&nbsp;
     	<a href="chemguanpanel/addTransInfo.jsp?orderID=${i.id}&struts=3">已完成</a>
     </c:if>
     
     </td>  
     </tr>
     </c:forEach>
            </table>
            </div>
<c:if test="${empty list}">未查询到数据</c:if>
            <div>
        </div>
       	 	 <!-- <c:if test="${!empty list}"><button class="btn btn-danger" style="margin-top: 5px;margin-left: 5px;" type="submit" onclick="return deleteInfo()">删除</button></c:if> -->
</form>
       	 	<!-- 分页按钮部分 -->
       	 	<c:if test="${requestScope.list != null}">
       	 	
       	 	<div class="fg-toolbar ui-toolbar ui-widget-header ui-corner-bl ui-corner-br ui-helper-clearfix">

	       	 	<div id="DataTables_Table_0_paginate" class="dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers">
		       	 	<a href="findAllOrders.do?pageCount=1&state=${requestScope.state}" id="DataTables_Table_0_first" tabindex="0" class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default">首页</a>
	       	 	<span>
	       	 	<c:if test="${requestScope.page==null&&requestScope.pagecount<=10}">
                       <c:forEach begin="1" end="${requestScope.pagecount}" var="v">
                       
                       <!--<c:if test="${v==1}">
					   href="findAllProducts.do?pageCount=1&typeId=${type}"
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   
    		    	   <c:if test="${v!=1}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   -->
    		    	   
    		    	   <c:if test="${v==s1s}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   
    		    	   <c:if test="${v!=s1s}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	    
    		    	   </c:forEach>
                 </c:if>
    		    		
    		    <c:if test="${requestScope.page==null&&requestScope.pagecount>10}">
                       <c:forEach begin="1" end="10" var="v">
    		    	   <c:if test="${v==1}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=1}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
                       
                <c:if test="${requestScope.page!=null&&requestScope.pagecount<=10}">
                       <c:forEach begin="1" end="${requestScope.pagecount}" var="v">
    		    	   <c:if test="${v==requestScope.page}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=requestScope.page}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
                       
                <c:if test="${requestScope.page!=null&&requestScope.pagecount>10}">
                       <c:if test="${requestScope.page>5&&requestScope.page+5<requestScope.pagecount}">
                       <c:forEach begin="${requestScope.page-5}" end="${requestScope.page+5}" var="v">
    		    	    <c:if test="${v==requestScope.page}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=requestScope.page}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
                       
                       <c:if test="${requestScope.page>5&&requestScope.page+5>=requestScope.pagecount}">
                       <c:forEach begin="${requestScope.page-5}" end="${requestScope.pagecount}" var="v">
    		    	    
    		    	   <c:if test="${v==requestScope.page}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=requestScope.page}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
                       
                       <c:if test="${requestScope.page<=5&&requestScope.page+5>=requestScope.pagecount}">
                       <c:forEach begin="1" end="${requestScope.pagecount}" var="v">
    		    	    
    		    	   <c:if test="${v==requestScope.page}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=requestScope.page}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
                       
                       <c:if test="${requestScope.page<=5&&requestScope.page+5<requestScope.pagecount}">
                       <c:forEach begin="1" end="10" var="v">
    		    	   <c:if test="${v==requestScope.page}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=requestScope.page}">
    		    	   <a href="findAllOrders.do?pageCount=${v}&state=${requestScope.state}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
					</c:if>        
	       	 		   
	       	 		      	       	 	
	       	 	
	       	 	</span>
		       	<a href="findAllOrders.do?pageCount=${requestScope.pagecount}&state=${requestScope.state}" id="DataTables_Table_0_last" tabindex="0" 
		       	   class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default">尾页</a>
	       	 	        共${requestScope.pagecount}页-跳转到 <input type="text" id="pagego" style="width:30px;">页 
	       	 	<a href="javascript:pageto()" id="DataTables_Table_0_first" tabindex="0" 
	       	 	   class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default">确定</a>
	       	 	</div>
       	 	</div>
       	 	</c:if>
       	 	
       	 	
       	 	<!--分页结束 -->
       	 	</div>


</div>
<input type="text" value="${requestScope.state}" id="stateid">

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
function pageto(){
 			var pagegoto = document.getElementById("pagego").value;
 			var state = document.getElementById("stateid").value;
 			if(${state==null}){
 			window.location.href="findAllOrders.do?pageCount="+pagegoto;
 			}else{
 			window.location.href="findAllOrders.do?pageCount="+pagegoto+"&state="+stateid;
 			}
 			}
</script>
</body>
</html>
