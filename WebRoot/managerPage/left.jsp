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

<title>manager_left</title>


<link rel="stylesheet" type="text/css" href="css/manager_left.css">


</head>
<body>
	
	<div class="links"><a href="admin_list_all_index_info.action"><span style=" line-height:30px;"><font color=white>&gt;&gt;首   页  管   理</font></span></a></div>
	<div class="links"><a href="find_black_first_four.action"><span style=" line-height:30px;"><font color=white>&gt;&gt;团队成员管理</font></span></a></div>
	<div class="links"><a href="listBackNews.action"><span style=" line-height:30px;"><font color=white>&gt;&gt;新闻动态管理</font></span></a></div>
	<div class="links"><a href="project_page_Action.action"><span style=" line-height:30px;"><font color=white>&gt;&gt;项目成果管理</font></span></a></div>
	<div class="links"><a href="admin_show_culture.action"><span style=" line-height:30px;"><font color=white>&gt;&gt;团队文化管理</font></span></a></div>
	<div class="links"><a href="admin_show_spirit.action"><span style=" line-height:30px;"><font color=white>&gt;&gt;团队精神管理</font></span></a></div>
	<div class="links"><a href="list_all_thesis.action"><span style=" line-height:30px;"><font color=white>&gt;&gt;科技前沿管理</font></span></a></div>
	<div class="links"><a href="admin_show_info.action"><span style=" line-height:30px;"><font color=white>&gt;&gt;联系我们管理</font></span></a></div>
	<div class="links"><a href="list_all_messages.action"><span style=" line-height:30px;"><font color=white>&gt;&gt;留 言 管 理</font></span></a></div>
	<div class="links"><a href="index.jsp"><span style=" line-height:30px;"><font color=white>&gt;&gt;返回首页</font></span></a></div>
	<div class="links"><a href="show_admin.action"><span style=" line-height:30px;"><font color=white>&gt;&gt;添加管理员</font></span></a></div>
</body>
</html>
