<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<!-- Site Title -->
<title>论文详细</title>

<!-- Meta Data -->
<meta charset="UTF-8" />
<meta name="keywords"
	content="photography, commercials, exposure videos, senior pictures">
<meta name="description" content="Your company description.">
<meta name="author" content="TutToaster.com/authors/CodyRobertson">
<meta name="copyright" content="Copyright 2010 TutToaster.com">
<meta name="robots" content="follow, index">
<link rel="shortcut icon" href="image/news_title_pic.png">
<!-- Site Theme Styling -->
<link rel="stylesheet" href="css/show_one_thesis.css" />



<!--[if lt IE 9]>
        <script type="text/javascript" src="javascript/HTML5-Shiv.js"></script>
        <![endif] -->
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

#divPagenation {
	position: absolute;
	left: 610px;
	top: 1180px;
}
</style>
</head>

<body>
	<!-- jQuery and Nivo Slider -->
	<script type="text/javascript" src="javascript/jQuery-1.4.2.min.js"></script>
	<script type="text/javascript" src="javascript/Nivo-Slider.min.js"></script>
	
	<div id="background">
	<div class="nav_bulb">
		<div class="nav">
			<a href="list_info_to_index.action"><img
				src="image/border_11.gif"></a> <a href="list_front_image.action"
				target=""><img src="image/border_12.gif"></a> <a
				href="listFrontNews.action" target=""><img
				src="image/border_13.gif"></a> <a
				href="client_project_page_Action.action" target=""><img
				src="image/border_14.gif"></a>
		</div>
		<div class="bulb">
		<a href="client_page_action.action" target=""><img
			src="image/bulb.png"></img></a>
	</div>
	</div>
		<div class="title">
			<center style="font-size: 24px;font-family: 楷体 ;color:white">
				<s:property value="%{thesis.title}" escape="false" />
			</center>
		</div>
		<div class="author">
			<center>
				<font face="楷体">作者：<s:property value="%{thesis.author}"
						escape="false" /> </font>
			</center>
		</div>
		<div class="content">
			<s:hidden value="%{thesis.id}" />

			
				<font size=3 face="微软雅黑"><s:property
						value="%{thesis.content}" escape="false" /> </font>
			</div>
		<div>

			<div class="pagebutton01" align="center">
				<div class="up">
					<s:iterator value="#request.list1" var="list1">

						<s:if test="#list1!=null">
							<a
								href="find_by_id.action?thesis.id=<s:property value="#list1.id" />"><font
								size="2" face="微软雅黑"><s:property value="#list1.title" />
							</font></a>
						</s:if>
						<s:elseif test="#list1==null">
							<font size="2" face="微软雅黑" color="#ABABAB">没有上一篇了</font>
						</s:elseif>
					</s:iterator>
				</div>
				<div class="current">
					<font size="2" face="微软雅黑"><a href="client_list_Page.action">返回目录列表</a>
					</font>
				</div>
				<div class="down">
					<s:iterator value="#request.list2" var="list2">

						<s:if test="#list2!=null">
							<a
								href="find_by_id.action?thesis.id=<s:property value="#list2.id" />"><font
								size="2" face="微软雅黑"><s:property value="#list2.title" />
							</font></a>
						</s:if>
						<s:elseif test="#list2==null">
							<font size="2" face="微软雅黑" color="#ABABAB">没有下一篇了</font>
						</s:elseif>
					</s:iterator>
				</div>
			</div>
			<!-- Baidu Button BEGIN -->
			<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
				<span class="bds_more">分享到：</span> <a class="bds_qzone"></a> <a
					class="bds_tsina"></a> <a class="bds_tqq"></a> <a
					class="bds_renren"></a> <a class="bds_t163"></a> <a
					class="shareCount"></a>
			</div>
			<script type="text/javascript" id="bdshare_js"
				data="type=tools&amp;uid=6663966"></script>
			<script type="text/javascript" id="bdshell_js"></script>
			<script type="text/javascript">
				document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion="
						+ Math.ceil(new Date() / 3600000)
			</script>
			<!-- Baidu Button END -->

			<div class="copyright">
			<jsp:include page="Copyright.jsp"></jsp:include>
			</div>
		</div>
	</div>

</body>
</html>