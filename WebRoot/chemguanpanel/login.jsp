<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>登录</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="chemguanpanel/css/bootstrap.min.css" />
		<link rel="stylesheet" href="chemguanpanel/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="chemguanpanel/css/matrix-login.css" />
        <link href="chemguanpanel/font-awesome/css/font-awesome.css" rel="stylesheet" />
		<script type="text/javascript" src="chemguanpanel/js/jquery.min.js"></script>
		<script type="text/javascript">
		function loginindex(){//
       		if(document.getElementById("username").value==''||document.getElementById("password").value==''){
       			alert("请输入用户名和密码");
       		}else{
        		var name,pass;  
        		name= document.getElementById("username").value;  
        		pass= document.getElementById("password").value;   
       			 $.ajax({  
		            async:false,  
		            type: "POST",  
		            url: "loginback.do",//注意路径  
		            data:{"username":name,"password":pass}, 
		            dataType:"text",  
		            success:function(data){
		              if(data=="1"){
		                window.location.href="chemguanpanel/index.jsp"; 
		              }else{
		               alert("用户名或密码错误，登录失败");
		              }  
		            }  
		        });  
   			 }}
		</script>
    </head>
    <body>
        <div id="loginbox">            
            <form id="form1" action="" method="post">
				 <div class="control-group normal_text"> <h3><img src="chemguanpanel/img/logo.png" alt="Logo" /></h3></div>
				 <br/><div class="text" style="color:white;text-align:center;"><font size="3">西瓜树管理后台</font></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"></i></span><input type="text" placeholder="用户名" id="username" name="username"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" placeholder="密码" id="password"  name="password"/>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">找回密码</a></span>
                    <span class="pull-right"><a type="button" class="btn btn-success" onclick="loginindex()"/>登陆</a></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical">
				<p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>
				
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
                        </div>
                    </div>
               
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
                    <span class="pull-right"><a class="btn btn-info"/>Reecover</a></span>
                </div>
            </form>
        </div> 
    </body>

</html>