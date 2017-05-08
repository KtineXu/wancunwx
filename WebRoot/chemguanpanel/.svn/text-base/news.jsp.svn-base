<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>信息管理</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="chemguanpanel/css/bootstrap.min.css" />
<link rel="stylesheet" href="chemguanpanel/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="chemguanpanel/css/fullcalendar.css" />
<link rel="stylesheet" href="chemguanpanel/css/matrix-style.css" />
<link rel="stylesheet" href="chemguanpanel/css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
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
 		
 		function selectType(type){
 			if(type != 0){
 				window.location.href = "findAllNews.do?type="+type;
 			}else{
 			    window.location.href = "findAllNews.do";
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
<!-- <div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 管理功能</a>
  <ul>
	<li ><a href="findAllNews.do"><i class="icon icon-home"></i> <span>信息列表</span></a> 
	
	</li>
	
  </ul>
</div> -->
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
            <select name="columnId" id="columnId">
            	<c:forEach var="col" items="${columnsList}">
            		<option value="${col.id }">${col.columnName}</option>
            	</c:forEach>
		            <!--  <c:if test="${type == null}">
		                <option value = "0">请选择消息类型</option>
		            	<option value = "1">保养手册</option>
		            	<option value = "2">慈善活动</option>
		            	<option value = "3">售后服务</option>
		             </c:if>
		             <c:if test="${type == 0}">
		                <option value = "0" selected="selected">请选择消息类型</option>
		            	<option value = "1">保养手册</option>
		            	<option value = "2">慈善活动</option>
		            	<option value = "3">售后服务</option>
		             </c:if>
		             <c:if test="${type == 1}">
		                <option value = "0">请选择消息类型</option>
		            	<option value = "1" selected="selected">保养手册</option>
		            	<option value = "2">慈善活动</option>
		            	<option value = "3">售后服务</option>
		             </c:if>
		             <c:if test="${type == 2}">
		                <option value = "0">请选择消息类型</option>
		            	<option value = "1">保养手册</option>
		            	<option value = "2" selected="selected">慈善活动</option>
		            	<option value = "3">售后服务</option>
		             </c:if>
		             <c:if test="${type == 3}">
		                <option value = "0">请选择消息类型</option>
		            	<option value = "1">保养手册</option>
		            	<option value = "2">慈善活动</option>
		            	<option value = "3" selected="selected">售后服务</option>
		             </c:if>-->
            
            </select>
            <a href="addNewsUI.do">
            <button  class="btn btn-info" type="button" style="float: right; margin-top: 3px;margin-right: 3px;" >添加信息</button></a>
          </div>
          
          <form action="deleteNews.do" method="post">
           
          <div class="widget-content nopadding">
          
            <table class="table table-bordered table-striped with-check">
              <thead>
                <tr>
                  <th><i class="#"></i></th>
                  <th>图片</th>  
                  <th>新闻标题</th>
                  <th>新闻简介</th>
                  <th>新闻内容</th>
                  <th>点击量</th>
                  <th>信息创建时间</th>
                  <th>操作</th>
                </tr>
              </thead>
      <c:forEach var="i" items="${pageBean.recordList}">
      <tr style="font-size: 12px;">
      <td><input type="checkbox" value="${i.id}" name="map" /></td>    
      <td><img src="${i.imgURL }" width="100px" height="100px"/></td>
      <td>${i.title}</td>
      <td>${i.description}</td>
      <td>${i.detail}</td>
      <td>${i.clickCount}</td>
      <td>
      	<c:set var="String1" value="${i.addDate}"/>
	 	<c:set var="String2" value="${fn:substring(String1,0,19)}"/>
		${String2 }
      </td>
     <td style="text-align: center;"><a href="findNewsById.do?id=${i.id}">修改</a>|
    <a href="deleteNewsById.do?id=${i.id}" onclick="return del()">删除</a></td> 
     </tr>
     </c:forEach>
            </table>
            </div>
<c:if test="${empty list}">未查询到数据</c:if>
            <div>
        </div>
       	 	  <c:if test="${!empty list}"><button class="btn btn-danger" style="margin-top: 5px;margin-left: 5px;" type="submit" onclick="return deleteInfo()">删除</button></c:if>
</form>
<!-- ************************************************************************************************************************************************* -->
       	 	<!-- 分页按钮部分 -->
       	 			<!--分页信息-->
			<%@include file="pageView.jsp" %>
				<form action="findAllNews.do"  id="pageForm">
					<!--<input type="hidden" name="id"/>  -->
				</form>
 <!-- ************************************************************************************************************************************************* -->  	 	
       	 	<!--分页结束 -->
       	 	</div>


</div>
<input type="hidden" value="${requestScope.type}" id="typeid">

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
 			if(${type==null}){
 			window.location.href="findAllNews.do?pageCount="+pagegoto;
 			}else{
 			window.location.href="findAllNews.do?pageCount="+pagegoto+"&type="+typeid;
 			}
 			}
</script>
</body>
</html>
