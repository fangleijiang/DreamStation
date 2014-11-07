<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/admin_login.css" />
<link rel="shortcut icon" href="image/news_title_pic.png">

  </head>
 
  <body background="image/admin_login_background.jpg">
 <div class="second_back">
 <div class="third_back">
 <form action="admin_login.action" method="POST">
 <center>
 <center><font face=时尚中黑简体 size=6>管理员登录</font></center><p>
		<table>
			<tr>
				<td><font face=时尚中黑简体>用户名:</font></td>
				<td><input type="text" name="admin.adminname" size="20"></td>
			</tr>
			<tr>
				<td><font face=时尚中黑简体>密&nbsp;&nbsp;码:</font></td>
				<td><input  type="password" name="admin.password" size="20"></td>
			</tr>
		</table><p>
				
				&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="" id="login">
				<input  type="reset" value="" id="reset">
				 </center>
	</form>

 </div>
 
 </div>
		
  </body>
</html>
