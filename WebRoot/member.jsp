<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

<title>团队成员</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="image/news_title_pic.png">
<link rel="stylesheet" type="text/css" href="css/member.css">
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

	<div class="body">
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
		<div class="content">


			<!--     导师 -->
			<!--  ----------------------------------------------------------------------------------- -->

			<div class="teacher">

				<div class="teacher_message">
					<s:iterator value="#request.list_teacher" id="teacher"
						status="status">
						<!-- 图片1 -->
						<div class="teacher_message1">
							<div class="teacher_image1">
								<a target=""  href="client_list_teacher.action?member.id=<s:property value="#teacher.id" />"><img width="90px" height="125px" src="<s:property value="#teacher.image_small" />"/></a>
							</div>
							<div class="teacher_name1" align="center">
								<a target=""  href="client_list_teacher.action?member.id=<s:property value="#teacher.id" />"><s:property value="#teacher.name" escape="false" /></a>
							</div>
						</div>
					</s:iterator>
				</div>


			</div>


			<!-- 	--------------------------------------------------------------------------------------- -->
			<!--    程序组 -->
			<div class="programmer_nav">
				<div class="programmer_link">
					<a href="client_list_all_programer.action?member.category='programmer'" target=""><font face="微软雅黑" color="white" size="4px">更多...</font></a>
				</div>

			</div>
			<div class="programmer_message">


				<s:iterator value="#request.list_programmer" id="programmer"
					status="status">
					<div class="programmer_message1">
						<div class="programmer_image1">
							<a target=""  href="client_list_one_programer.action?member.id=<s:property value="#programmer.id" />"><img width="90px" height="110px" src="<s:property value="#programmer.image_small" />"/></a>
							
						</div>
						<div class="programmer_name1" align="center">
							<a target=""  href="client_list_one_programer.action?member.id=<s:property value="#programmer.id" />"><s:property value="#programmer.name" escape="false" /></a>
						</div>
					</div>
				</s:iterator>
			</div>








			<!-- 	--------------------------------------------------------------------------------------- -->
			<!-- 美工组 -->
			<div class="painting_nav">
				<div class="painting_link">
					<a href="client_list_all_painting.action?member.category='painting'"  target=""><font face="微软雅黑" color="white" size="4px">更多...</font></a>
				</div>

			</div>






			<div class="painting_message">
				<s:iterator value="#request.list_painting" id="painting"
					status="status">
					<div class="painting_message1">
						<div class="painting_image1">
							<a target=""  href="client_list_one_painting.action?member.id=<s:property value="#painting.id" />"><img width="90px" height="110px" src="<s:property value="#painting.image_small" />"/></a>
						</div>
						<div class="painting_name1" align="center">
							<a target=""  href="client_list_one_painting.action?member.id=<s:property value="#painting.id" />"><s:property value="#painting.name" escape="false" /></a>
						</div>

					</div>

				</s:iterator>

			</div>
			
		</div>
		<div class="copyright">
			<jsp:include page="Copyright.jsp"></jsp:include>
			</div>
	</div>

</body>
</html>
