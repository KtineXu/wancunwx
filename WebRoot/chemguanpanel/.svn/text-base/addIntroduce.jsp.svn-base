<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<base href="<%=basePath%>">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<base href="<%=basePath%>">
<head>
<title>修改公司介绍信息</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="chemguanpanel/css/bootstrap.min.css" />
<link rel="stylesheet" href="chemguanpanel/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="chemguanpanel/css/fullcalendar.css" />
<link rel="stylesheet" href="chemguanpanel/css/matrix-style.css" />
<link rel="stylesheet" href="chemguanpanel/css/matrix-media.css" />
<link href="chemguanpanel/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="chemguanpanel/css/jquery.gritter.css" />
<script type="text/javascript" src="chemguanpanel/js/jquery-1.11.3.min.js"></script>
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

    <script type="text/javascript">
	        function commit(){
	            var title=$("#title").val();
				if(title==0){
					alert("请填写肤色名称！");
					return false;
				}
				form1.submit();
	        }
    </script>

</head>
 <body>
 <div id="header">
  <h1><a href="ChemPanel/index.jsp">Chemguan Admin</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<jsp:include page="heads.jsp"></jsp:include>
<!--close-top-Header-menu-->
<div class="copyrights">Maker from <a href="http://www.cssmoban.com/" >贞观互联</a></div>
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 管理功能</a>
	

	<ul>
			<li class="submenu"><a href="#"><span>公司介绍列表</span></a>
		   					
		</ul>
</div>
<div id="content">
  <!--from表单  -->
     <div class="container-fluid">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>修改列表</h5>
          
        </div>
        <div class="widget-content nopadding"> 
		   
        <c:if test="${introduce.id==null}">
        	<form id="form1" class="form-horizontal" action="addIntro.do" method="post" enctype="multipart/form-data">
        </c:if>
        <c:if test="${introduce.id!=null}">
        	<form class="form-horizontal" id="form1" action="updateIntroById.do" method="post" enctype="multipart/form-data">
        	<input type="hidden" value="${introduce.id }"  name="id"/>
        </c:if>
        
        
         <div class="control-group">
             <label class="control-label">联系电话：</label>
             <div class="controls">
               <input type="text" value="${introduce.tNumber}" style="height:30px;width:300px" name="tNumber" id="tNumber"  >
             </div>
           </div>
           
           <div class="control-group">
             <label class="control-label">联系邮箱：</label>
             <div class="controls">
               <input type="text" value="${introduce.mailbox}" style="height:30px;width:300px" name="mailbox" id="mailbox"  >
             </div>
           </div>
           
           <div class="control-group">
             <label class="control-label">联系地址：</label>
             <div class="controls">
               <input type="text" value="${introduce.address}" style="height:30px;width:300px" name="address" id="address"  >
             </div>
           </div>
        
               
            <div class="control-group">
             <label class="control-label">品牌介绍：</label>
             <div class="controls">
                <textarea rows="5" cols="10" name="content" id="content" style="resize:none;height:300px;width:400px">${introduce.introduce}</textarea>
             </div>
           </div>
            
          
            <div class="form-actions">
              <button type="button" class="btn btn-success" onclick="commit();">提交</button>
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
		
		</body>