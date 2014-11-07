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

<title>网站后台管理</title>

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
<%
	HttpSession hr = request.getSession();
	String myName = (String) hr.getAttribute("adminname");

	if (myName == null) {
		//返回登陆界面  
		response.sendRedirect("../admin_login.jsp");
		return;
	}
%>
<body>
	<div class="body">
		<div class="top">
		<img alt="" src="image/manager_top.jpg"/>
		</div>
		<div class="left">
		<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div class="right">
		<img alt="" src="image/manage_backround.jpg"/>
		</div>
	</div>

</body>
</html>
