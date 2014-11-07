<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<!-- Site Title -->
<title>程序组成员</title>

<!-- Meta Data -->

<meta name="keywords"
	content="photography, commercials, exposure videos, senior pictures">
<meta name="description" content="Your company description.">
<meta name="author" content="TutToaster.com/authors/CodyRobertson">
<meta name="copyright" content="Copyright 2010 TutToaster.com">
<meta name="robots" content="follow, index">
<link rel="shortcut icon" href="image/news_title_pic.png">
<!-- Site Theme Styling -->
<link rel="stylesheet" href="css/show_one_programer.css" />
<style type="text/css">
body,html {
	width: 1004px;
	padding: 0px;
	margin: 0px auto; /*设置居中  */
	text-align: center; /*兼容性更好  */
}

a img {
	border: none;
}
</style>
</head>
<body>
	<script type="text/javascript" src="javascript/jQuery-1.4.2.min.js"></script>
	<script type="text/javascript" src="javascript/Nivo-Slider.min.js"></script>
	
	<div id="background">
	<div class="nav_bulb">
		<div class="nav">
		  <a href="list_info_to_index.action"><img src="image/border_11.gif"></a>
			<a href="list_front_image.action" target=""><img src="image/border_12.gif"></a>
			<a href="listFrontNews.action" target=""><img src="image/border_13.gif"></a>
			<a href="client_project_page_Action.action" target=""><img src="image/border_14.gif"></a>
		</div>
		<div class="bulb">
	<a href="client_page_action.action" target=""><img src="image/bulb.png"></img></a>
	</div>
	</div>
		<div class="programer_body">
				<div class="programer_image">
						<img width="400px" height="550px" src="<s:property value="%{member.image_big}"/>" />
					</div>
					<div class="programer_introduce">
						<font face="微软雅黑" size="3px">姓名：<s:property value="%{member.name}"/><br>
						年级专业：<s:property value="%{member.grade_major}"/><br>
						个人介绍：<s:property value="%{member.introduction}"  escape="false"/><br>
						</font>
					</div>
					<div class="goback"><a href="client_list_all_programer.action?member.category='programmer'"><font face="微软雅黑" size="2px">&lt;&lt;返回所有程序员列表</font></a></div>
		</div>
		 <div class="copyright">
		<jsp:include page="Copyright.jsp"></jsp:include>
		</div> 
	</div>
</body>
</html>
