<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Site Title -->
<title>科技前沿</title>

<!-- Meta Data -->
<meta charset="UTF-8" />
<meta name="keywords"
	content="photography, commercials, exposure videos, senior pictures">
<meta name="description" content="Your company description.">
<meta name="author" content="TutToaster.com/authors/CodyRobertson">
<meta name="copyright" content="Copyright 2010 TutToaster.com">
<meta name="robots" content="follow, index">

<!-- Site Theme Styling -->
<link rel="stylesheet" href="css/show_all_thesis.css" />

<link rel="shortcut icon" href="image/news_title_pic.png">

<!--[if lt IE 9]>
        <script type="text/javascript" src="javascript/HTML5-Shiv.js"></script>
        <![endif] -->
        <!-- jQuery and Nivo Slider -->
	<script type="text/javascript" src="javascript/jQuery-1.4.2.min.js"></script>
	<script type="text/javascript" src="javascript/Nivo-Slider.min.js"></script>
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
		<div class="content" style="font-family: 微软雅黑">
			<s:iterator value="list_thesis" id="thesis">
				<div class="thesis_introduce">

					<s:hidden value="#thesis.id" name="thesis.id" />
					<div class="picture"></div>
					<div class="title">
						<a href="find_by_id.action?thesis.id=${thesis.id}" target=""><s:property
								value="#thesis.title" />
						</a>
					</div>
					<div class="clickRate">
						<font face="楷体">点击量:<s:property value="#thesis.clickRate" /></font>
					</div>
					<div class="viewall"><a
						href="find_by_id.action?thesis.id=${thesis.id}" target=""><font
							color="#ABABAB" face="楷体">[查看全文]</font> </a></div>
					<div class="blank"></div>
					<div class="auther">
						<font face="楷体">作者:<s:property value="#thesis.author" /></font>
					</div>
					<div class="datetime">
						<font face="楷体">发布时间:<s:date name="#thesis.datetime" format="yyyy-MM-dd"></s:date></font>
					</div>
				</div>
			</s:iterator>
		</div>
		<div class="pagebutton00" align="center">
			<s:iterator value="pagebean">
				<td></td>
				<td><s:if test="%{currentPage == 1}">
						<font size="2" face="微软雅黑" color="#ABABAB">第一页
						上一页</font>
					</s:if> <s:else>
						<font size="2" face="微软雅黑" color="#000000"><a href="client_list_Page.action?page=1">第一页</a>
						<a
							href="client_list_Page.action?page=<s:property value="%{currentPage-1}"/>">上一页</a></font>
					</s:else>&nbsp;<font size="2" face="微软雅黑" color="#000000">共 <font
						color="blue"><s:property value="allRow" /> </font>
						条记录&nbsp;&nbsp;当前 <font color="blue"><s:property
								value="currentPage" />
					</font>/<font color="blue"><s:property value="totalPage" /> </font>页</font>&nbsp;<s:if
						test="%{currentPage != totalPage}">
						<font size="2" face="微软雅黑" color="#000000"><a
							href="client_list_Page.action?page=<s:property value="%{currentPage+1}"/>">下一页</a>
						<a
							href="client_list_Page.action?page=<s:property value="totalPage"/>">最后一页</a></font>
					</s:if> <s:else>
						<font size="2" face="微软雅黑" color="#ABABAB">下一页
						最后一页</font>
					</s:else>
				</td>
			</s:iterator>
		</div>
 <div class="copyright">
		<jsp:include page="Copyright.jsp"></jsp:include>
		</div> 
	</div>