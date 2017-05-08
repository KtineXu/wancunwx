<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<base href="<%=basePath%>">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<base href="<%=basePath%>">
<head>
<title>首页模块修改</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="chemguanpanel/css/bootstrap.min.css" />
<link rel="stylesheet" href="chemguanpanel/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="chemguanpanel/css/fullcalendar.css" />
<link rel="stylesheet" href="chemguanpanel/css/matrix-style.css" />
<link rel="stylesheet" href="chemguanpanel/css/matrix-media.css" />
<link href="chemguanpanel/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="chemguanpanel/css/jquery.gritter.css" />
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script charset="utf-8" src="kindeditor-4.1.10/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor-4.1.10/lang/zh-CN.js"></script>
	<script type="text/javascript">
	
		    //KindEditor插件 
			KindEditor.ready(function(K) {
			editor = K.create('textarea[name="content"]', {
			allowFileManager : true,
			autoHeightMode : false ,
			themeType:'common',
			uploadJson :'<%=request.getContextPath()%>/kindeditor-4.1.10/jsp/upload_json.jsp',
			            fileManagerJson : '<%=request.getContextPath()%>/kindeditor-4.1.10/jsp/upload_json.jsp',
			afterCreate : function() {
			this.loadPlugin('autoheight');
			},
			afterBlur:function(){this.sync();}
			});
			}); 
	</script>


</head>
 <body>
 <input type="hidden" id="col" value="${colum.parentColumnId }"/>
 <div id="header">
  <h1><a href="chemguanpanel/index.jsp">Chemguan Admin</a></h1>
</div>
<!--close-Header-part--> 
<!--top-Header-menu-->
<jsp:include page="heads.jsp"></jsp:include>
<!--close-top-Header-menu-->
<div class="copyrights">Maker from <a href="http://www.cssmoban.com/" >贞观互联</a></div>
<!--sidebar-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 管理功能</a>
	
	<ul>
			<li class="submenu"><a href="#"><span>栏目管理</span></a>
		      <ul>		        
		        <li><a href="chemguanpanel/contentList.jsp">栏目列表</a></li>	
		      </ul>
		    </li>								
		</ul>
</div>
<!--sidebar-menu end-->

<div id="content">
  <!--form表单  -->
  <c:if test="${colum==null}">
  <form action="AddColumn.do" method="post" enctype="multipart/form-data">
  </c:if>
  
  <c:if test="${colum!=null}">
  <form action="updateColumn.do" method="post" enctype="multipart/form-data">
  </c:if>
  
     <div class="container-fluid">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>增加栏目</h5>
        </div>
        <div class="widget-content nopadding">           
             <div class="control-group">
              <label class="control-label">父栏目:</label>
              <div class="controls">
              <select id="parentColumnId" name="parentColumnId">
              	<option value="0">一级栏目</option>
                 	<c:forEach items="${list}" var="u">
						<option value="${u.id}">${u.columnName}</option>
						
						<c:if test="${u.list!=null}">
							<c:forEach items="${u.list}" var="ul">
								<option value="${ul.id}">&nbsp;&nbsp;&nbsp;&nbsp;${ul.columnName}</option>	
															
								<c:if test="${ul.list!=null}">
									<c:forEach items="${ul.list}" var="ull">
										<option value="${ull.id}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ull.columnName}</option>								
									</c:forEach>
								</c:if>								
							</c:forEach>
						</c:if>
						
					</c:forEach>
              </select>
              </div>
            </div>  
                                        
             <div class="control-group">
              <label class="control-label">栏目名称:</label>
              <div class="controls">
                <input type="text" name="columnName" id="columnName" value="${colum.columnName }"/>
                <div id="name"></div>
              </div>
            </div>
            
            <div class="control-group">
              <label class="control-label">栏目图片:</label>
              <div class="controls">
                <input type="file" name="image" id="image">
              </div>
            </div>
            
            <div class="control-group">
              <label class="control-label">栏目描述:</label>
              <div class="controls">
               <input type="text" value="${colum.description}" style="height:30px;width:300px" name="description" id="description"  >
              </div>
            </div>
            
            <div class="control-group">
              <label class="control-label">栏目内容:</label>
              <div class="controls">
                <textarea rows="5" cols="10" name="content" id="content" style="resize:none;height:300px;width:400px">${colum.detail}</textarea>
              </div>
            </div>
             <input type="hidden" name="id" id="id" value="${colum.id }"/>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">提交</button>
            </div>
          </form>
            
        </div>
      </div>
      </div>
        <!--Footer-part-->
		<div class="row-fluid">
		  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> </div>
		</div>
		<!--end-Footer-part-->
		<script src="chemguanpanel/js/jquery.min.js"></script> 
		<script src="chemguanpanel/js/jquery.ui.custom.js"></script> 
		<script src="chemguanpanel/js/bootstrap.min.js"></script> 
		<script src="chemguanpanel/js/jquery.validate.js"></script> 
		<script src="chemguanpanel/js/jquery.wizard.js"></script> 
		<script src="chemguanpanel/js/matrix.js"></script> 
		<script src="chemguanpanel/js/matrix.wizard.js"></script>
		 <script type="text/javascript">
	        window.onload=function(){
	        	var co=$("#col").val();
	        	 var select = $("#parentColumnId");
	        	 select.val(co);
	        	 select.innerHTML(co);    			
	        }
    	</script>
		</body>