<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>添加管理员</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/back_manage.css" />
<link rel="shortcut icon" href="image/news_title_pic.png">
<style type="text/css">
body,html {
	width:1004px;
	padding:0px;
	margin: 0px auto;          /*设置居中  */
	text-align:center;         /*兼容性更好  */
}
</style>

</head>
<body>
	<div class="body">
		<div class="top">
		<img alt="" src="image/manager_top.jpg"/>
		</div>
		<div class="left">
		<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div class="right">
		<center><h2>添加管理员</h2>
		<form action="save_admin.action" method="POST">
		<table border="1">
		<tr>
		<td>
		帐号:
		</td>
		<td>
		<input type="text" name="admin.adminname">
		</td>
		
		</tr>
		<tr>
		<td>
		密码:
		</td>
		<td>
		<input type="text" name="admin.password">
		</td>
		
		</tr>
		
		<tr>
		<td>
		
		</td>
		<td>
		<input type="submit" value="添加">
		<input type="reset" value="重置">
		</td>
		
		</tr>
		
		
		</table>
		</form>
		</center>
		</div>
	</div>

</body>
</html>
