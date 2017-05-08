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
<title>顾客管理</title>
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
 		
 		function search(){
 		   var name=document.getElementById("nick").value;
 		   var name1=document.getElementById("nick1").value;
 		   var name2=document.getElementById("nick2").value;
 		   if(name==""&&name1==""&&name2==""){
 		       alert("请输入查询信息");
 		   }else if(name!=""&&name1==""&&name2==""){
 			   window.location.href="findAllCustomer.do?nickName="+name; 		
 		   }else if(name==""&&name1!=""&&name2==""){
 			   window.location.href="findAllCustomer.do?tNumber="+name1; 		
 		   }else if(name==""&&name1==""&&name2!=""){
 			   window.location.href="findAllCustomer.do?customerName="+name2; 		
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
	<li class="submenu"><a href="#"><span>顾客列表</span></a>
	
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
              
                                昵称<input  id="nick" name="nickName" type="search"/>
                                手机    <input  id="nick1" name="tNumber" type="search"/>
                                真实姓名   <input  id="nick2" name="customerName" type="search"/>
            <input type="button" value="搜索" onclick="search()"/> 
               
            <a href="chemguanpanel/addCustomer.jsp">
            <button  class="btn btn-info" type="button" style="float: right; margin-top: 3px;margin-right: 3px;">添加信息</button></a>
          </div>
          
          <form action="deletemorevote.do" method="post">
           
          <div class="widget-content nopadding">
          
            <table class="table table-bordered table-striped with-check">
              <thead>
                <tr>
                  <th><i class="#"></i></th>
                  <th>顾客ID</th>
                  <th>用户昵称</th>
                  <th>顾客真实姓名</th>
                  <th>手机号码</th>
                  <th>所属省，市，区</th>
                  <th>地址</th>
                  <th>量体时间</th>
                  <th>是否消费</th>
                  <th>消费金额</th>
                  <th>是否首次预约</th>
                  <th>专属码</th>
                  <th>苏色定制照片</th>
                  <th>平时着装照</th>
                  <th>是否分享朋友圈</th>
                  <th>备注</th>
                  <th>用户类型</th>
                  <th>更改用户类型</th>                               
                  <th>操作</th>
                </tr>
              </thead>
      <c:forEach var="i" items="${list}">
      <tr style="font-size: 12px;">
      <td><input type="checkbox" value="${i.id}" name="map" /></td>
      <td>${i.id}</td>
       <td>${i.nickName}</td>
      <td>${i.customerName}</td>
      <td>${i.tNumber}</td>
      <td>${i.provincial}</td>
      <td>${i.address}</td>
      <td>${i.doTime}</td>
      <td>${i.isPay}</td>
       <td>${i.payMoney}</td>
      <td>${i.isFirstTime}</td>
      <td>${i.number}</td>
      <td><img src = "${i.customUrl }"></td>
      <td><img src = "${i.normalUrl }"></td>
      <td>${i.share}</td>
      <td>${i.remark}</td>
      <td>
      <c:if test="${i.typeID==null||i.typeID==0||i.typeID==1}">
     		 普通用户
      </c:if>
      <c:if test="${i.typeID==2}">
      		量体师
      </c:if>
      <c:if test="${i.typeID==3}">
      		商家
      </c:if>
      
      </td>
      <td>
      <c:if test="${i.typeID!=2}">
      <a href="changetoD.do?typeID=2&id=${i.id}">设为量体师</a>
      </c:if>
      <c:if test="${i.typeID==2}">
      <a href="canceltoD.do?typeID=1&id=${i.id}">取消量体师</a>
      </c:if>
      -|-
      <c:if test="${i.typeID!=3}">
      <a href="changetoS.do?typeID=3&id=${i.id}">设为商铺</a>
      </c:if>
      <c:if test="${i.typeID==3}">
      <a href="canceltoS.do?typeID=1&id=${i.id}">取消商铺</a>
      </c:if>
      </td>
      <td style="text-align: center;">     	
    	<c:if test ="${type != 1}">
    		<c:if test = "${type == 2}">
    		 	<a href="deleteCustomerById.do?id=${i.id}&type=${type}" onclick="return del() ">删除</a>|
    			<a href="findCustomerDataById.do?id=${i.id}" >查看顾客数据</a>|
	      		<a href="findDesignOrderById.do?id=${i.id}" >查看我的订单</a>
    		</c:if>
    		<c:if test= "${type == 3}">
    		 	<a href="deleteCustomerById.do?id=${i.id}&type=${type}" onclick="return del()">删除</a>|
    			<a href="findAllCustomerByShop.do?id=${i.id}" >查看消费消费人员</a>
    		</c:if>    	    
    	</c:if>
    	<c:if test ="${type == null}">
    	<!--<a href="findVoteById.do?id=${i.id}">修改</a>|-->
    	<a href="deleteCustomerById.do?id=${i.id}" onclick="return del()">删除</a>|
    	<a href="findDesignerNameByCustomerName.do?customerName=${i.customerName}&id=${i.id}">下订单</a>
    	<c:if test="${i.typeID==2}">
    	   <a href="findInfoById.do?id=${i.id}">|完善量体师信息</a>
    	</c:if>
    	</c:if>
      </td> 
     </tr>
     </c:forEach>
            </table>
            </div>
<c:if test="${empty list}">未查询到数据</c:if>
            <div>
        </div>
       	 	  <c:if test="${!empty list}"><button class="btn btn-danger" style="margin-top: 5px;margin-left: 5px;" type="submit" onclick="return deleteInfo()">删除</button></c:if>
</form>
       	 	<!-- 分页按钮部分 -->
       	 	<c:if test="${requestScope.list != null}">
       	 	
       	 	<div class="fg-toolbar ui-toolbar ui-widget-header ui-corner-bl ui-corner-br ui-helper-clearfix">

	       	 	<div id="DataTables_Table_0_paginate" class="dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers">
		       	 	<a href="findAllCustomer.do?pageCount=1&typeID=${typeID1}" id="DataTables_Table_0_first" tabindex="0" class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default">首页</a>
	       	 	<span>
	       	 	<c:if test="${requestScope.page==null&&requestScope.pagecount<=10}">
                       <c:forEach begin="1" end="${requestScope.pagecount}" var="v">
                       
                       <!--<c:if test="${v==1}">
					   href="findAllProducts.do?pageCount=1&typeId=${type}"
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=1}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	    
    		    	    
    		    	   -->
    		    	   
    		    	   <c:if test="${v==pagecount11}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=pagecount11}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
    		    	   	    	  
                 </c:if>
    		    		
    		    <c:if test="${requestScope.page==null&&requestScope.pagecount>10}">
                       <c:forEach begin="1" end="10" var="v">
    		    	   <c:if test="${v==1}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=1}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
                       
                <c:if test="${requestScope.page!=null&&requestScope.pagecount<=10}">
                       <c:forEach begin="1" end="${requestScope.pagecount}" var="v">
    		    	   <c:if test="${v==requestScope.page}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=requestScope.page}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
                       
                <c:if test="${requestScope.page!=null&&requestScope.pagecount>10}">
                       <c:if test="${requestScope.page>5&&requestScope.page+5<requestScope.pagecount}">
                       <c:forEach begin="${requestScope.page-5}" end="${requestScope.page+5}" var="v">
    		    	    <c:if test="${v==requestScope.page}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=requestScope.page}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
                       
                       <c:if test="${requestScope.page>5&&requestScope.page+5>=requestScope.pagecount}">
                       <c:forEach begin="${requestScope.page-5}" end="${requestScope.pagecount}" var="v">
    		    	    
    		    	   <c:if test="${v==requestScope.page}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=requestScope.page}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
                       
                       <c:if test="${requestScope.page<=5&&requestScope.page+5>=requestScope.pagecount}">
                       <c:forEach begin="1" end="${requestScope.pagecount}" var="v">
    		    	    
    		    	   <c:if test="${v==requestScope.page}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=requestScope.page}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
                       
                       <c:if test="${requestScope.page<=5&&requestScope.page+5<requestScope.pagecount}">
                       <c:forEach begin="1" end="10" var="v">
    		    	   <c:if test="${v==requestScope.page}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default"><font color="red">${v}</font></a>
    		    	   </c:if>
    		    	   <c:if test="${v!=requestScope.page}">
    		    	   <a href="findAllCustomer.do?pageCount=${v}&typeID=${typeID1}" tabindex="0" class="fg-button ui-button ui-state-default">${v}</a>
    		    	    </c:if>
    		    	   </c:forEach>
                       </c:if>
					</c:if>        
	       	 		   
	       	 		      	       	 	
	       	 	
	       	 	</span>
		       	<a href="findAllCustomer.do?pageCount=${requestScope.pagecount}&typeID=${typeID1}" id="DataTables_Table_0_last" tabindex="0" 
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
<input type="text" value="${requestScope.typeID1}" id="typeid">
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
 			var pagegoto=document.getElementById("pagego").value;
 			var typeid=document.getElementById("typeid").value;
 			window.location.href="findAllCustomer.do?pageCount="+pagegoto+"&typeID="+typeid;
 			
 			}
</script>
</body>
</html>
