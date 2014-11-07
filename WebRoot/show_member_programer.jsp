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
<title>程序组</title>

<!-- Meta Data -->

<meta name="keywords"
	content="photography, commercials, exposure videos, senior pictures">
<meta name="description" content="Your company description.">
<meta name="author" content="TutToaster.com/authors/CodyRobertson">
<meta name="copyright" content="Copyright 2010 TutToaster.com">
<meta name="robots" content="follow, index">
<link rel="shortcut icon" href="image/news_title_pic.png">
<!-- Site Theme Styling -->
<link rel="stylesheet" href="css/show_member_program.css" />
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
		<div class="programer_body">
		<s:iterator value="#request.listMember" id="programmer"
					status="status">
			<div class="programer">
				<div class="programer_image">
					<a target=""  href="client_list_one_programer.action?member.id=<s:property value="#programmer.id" />"><img width="92px" height="126px" src="<s:property value="#programmer.image_small" />"/></a>
				</div>
				<div class="programer_introduce">
				<font face="微软雅黑" size="2px">姓名:</font><font face="微软雅黑" size="3px" color="#008FD1"><s:property value="#programmer.name" escape="false" /></font><br>
				<font face="微软雅黑" size="2px">专业:<s:property value="#programmer.grade_major" escape="false" /></font><br>
				<a target=""  href="client_list_one_programer.action?member.id=<s:property value="#programmer.id" />"><font face="微软雅黑" size="2px">详细资料&gt;&gt;</font></a>
				</div>
			</div>
		</s:iterator>
		</div>
		<div class="page" align="center">
			<s:iterator value="pagebean">
				<td></td>
				<td><s:if test="%{currentPage == 1}">
						<font size="2" face="微软雅黑" color="#ABABAB">第一页
						上一页</font>
					</s:if> <s:else>
						<font size="2" face="微软雅黑" color="#000000"><a href="client_list_all_programer.action?page=1&&member.category='programmer'">第一页</a>
						<a
							href="client_list_all_programer.action?page=<s:property value="%{currentPage-1}"/>&&member.category='programmer'">上一页</a></font>
					</s:else>&nbsp;<font size="2" face="微软雅黑" color="#000000">共 <font
						color="blue"><s:property value="allRow" /> </font>
						条记录&nbsp;&nbsp;当前 <font color="blue"><s:property
								value="currentPage" />
					</font>/<font color="blue"><s:property value="totalPage" /> </font>页</font>&nbsp;<s:if
						test="%{currentPage != totalPage}">
						<font size="2" face="微软雅黑" color="#000000"><a
							href="client_list_all_programer.action?page=<s:property value="%{currentPage+1}"/>&&member.category='programmer'">下一页</a>
						<a
							href="client_list_all_programer.action?page=<s:property value="totalPage"/>&&member.category='programmer'">最后一页</a></font>
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
</body>
</html>
