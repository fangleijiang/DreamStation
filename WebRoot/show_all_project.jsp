<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>所有项目</title>


<link rel="stylesheet" type="text/css" href="css/show_all_project.css">
<link rel="shortcut icon" href="image/news_title_pic.png">
<style type="text/css">
body,html {
	width: 1004px;
	padding: 0px;
	margin: 0px auto; /*设置居中  */
	text-align: center; /*兼容性更好  */
}

a img {
	border: none;
	margin: 0 auto;
	padding: 0px;
}
</style>
</head>

<body>

	<div class="background">
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
		<div class="body">
		<div class="project">
			<div class="project_body">
				<table border="0" cellpadding="8" cellspacing="0">
					<tr>
						<s:iterator value="listProject" id="project" status="status">
							<td style="text-align:center;">
							<div class="project_image">
							<a href="show_project_details.action?project.id=<s:property value="#project.id"/>" target="">
							<img width="200px"
								height="130px"
								src="<s:property value="#project.picsite" escape="false"/>" /></a>
							</div>
							<div class="project_detail">
								<font face="微软雅黑" size="1.5px">项目名称：<a href="show_project_details.action?project.id=<s:property value="#project.id"/>" target="" style="color: #0D43B4"><s:property value="#project.title"
										escape="false" /></a>
										<br> 链接: <a
								href="<s:property value="#project.link" escape="false"/>"
								target="" style="color: #0D43B4"><s:property
											value="#project.link" escape="false" /></a></font>
							</div>				
							</td>
							
							<s:if test="#status.index%3==2">
								<tr>
							</s:if>
						</s:iterator>
					</tr>
				</table>
			</div>
			<div class="page_del">
				<table>
					<s:iterator value="pagebean">
						<tr>

							<td colspan="12"><s:if test="%{currentPage == 1}">
									<input type="button" style="font-family: 微软雅黑;font-size: 12px" disabled="disabled" value="第一页" />
									<input type="button" style="font-family: 微软雅黑;font-size: 12px" disabled="disabled" value="上一页" />
								</s:if> <s:else>
									<a href="client_project_page_Action.action?page=1"><input
										type="button" style="font-family: 微软雅黑;font-size: 12px" value="第一页" /></a>

									<a
										href="client_project_page_Action.action?page=<s:property value="%{currentPage-1}"/>"><input
										type="button" style="font-family: 微软雅黑;font-size: 12px" value="上一页" /></a>
								</s:else> 
								<font face="微软雅黑" size="2px">当前 <font  face="微软雅黑" color="blue"><s:property value="currentPage" /></font>/<font  face="微软雅黑" color="blue"><s:property value="totalPage" /></font> 页</font>
								<s:if test="%{currentPage != totalPage}">
									<a
										href="client_project_page_Action.action?page=<s:property value="%{currentPage+1}"/>"><input
										type="button" style="font-family: 微软雅黑;font-size: 12px" value="下一页" /></a>
									<a
										href="client_project_page_Action.action?page=<s:property value="totalPage"/>"><input
										type="button" style="font-family: 微软雅黑;font-size: 12px" value="最后一页" /></a>
								</s:if> <s:else>
									<input type="button" style="font-family: 微软雅黑;font-size: 12px" disabled="disabled" value="下一页" />
									<input type="button" style="font-family: 微软雅黑;font-size: 12px" disabled="disabled" value="最后一页" />
								</s:else></td>
						</tr>

					</s:iterator>

				</table>
			</div>
			</div>
		</div>
 <div class="copyright">
		<jsp:include page="Copyright.jsp"></jsp:include>
		</div> 
	</div>


</body>
</html>
