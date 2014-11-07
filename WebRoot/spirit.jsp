<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Site Title -->
<title>团队精神</title>

<!-- Meta Data -->
<meta charset="UTF-8" />


<!-- Site Theme Styling -->
<link rel="stylesheet" href="css/spirit.css" />
<link rel="shortcut icon" href="image/news_title_pic.png">


<style type="text/css">
body,html {
	width:1004px;
		padding:0px;
		margin: 0px auto;          /*设置居中  */
		text-align:center;         /*兼容性更好  */
}
a img
	{ 
				border:none;
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
			  <a href="list_info_to_index.action"><img src="image/border_11.gif"></a>
			<a href="list_front_image.action" target=""><img src="image/border_12.gif"></a>
			<a href="listFrontNews.action" target=""><img src="image/border_13.gif"></a>
			<a href="client_project_page_Action.action" target=""><img src="image/border_14.gif"></a>
		</div>
		<div class="bulb">
	<a href="client_page_action.action" target=""><img src="image/bulb.png"></img></a>
	</div>
	</div>
		<div class="content2" align="center">
				<font face="楷体">梦之站精神</font>
		</div>
		<div class="content1">
			<table>
				<s:iterator value="#request.list" id="spirit" status="status">
					<tr>
						<td><font face=微软雅黑> &nbsp;&nbsp;<s:property
									value="#spirit.title" escape="false" />
						</font><br>
							----------------------------------------------------------</td>
					</tr>
					<tr>
						<td><font size="3px" face=微软雅黑> <s:property
									value="#spirit.spirit" escape="false" /> </font>
						<p>
						</td>
					</tr>
					<s:if test="#status.index%2 ==0">
						<tr>
					</s:if>
				</s:iterator>
			</table>

		</div>
 <div class="copyright">
		<jsp:include page="Copyright.jsp"></jsp:include>
		</div> 
	</div>
</body>
</html>