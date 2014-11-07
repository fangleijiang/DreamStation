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
<link rel="shortcut icon" href="image/news_title_pic.png">
<title>项目管理</title>
<link rel="stylesheet" type="text/css" href="css/back_manage.css">
<style type="text/css">
body,html {
	width: 1004px;
	padding: 0px;
	margin: 0px auto; /*设置居中  */
	text-align: center; /*兼容性更好  */
}
.projectname{
text-overflow:ellipsis;
overflow:hidden; 
white-space:nowrap; 
width:100px;
text-align: center;
}
.developers
{
    overflow:hidden;
    text-overflow:ellipsis;  /*截断文字，显示省略号(...)*/
    -o-text-overflow:ellipsis;  /*Opera的专用截断文字的属性*/
	white-space:nowrap !important;  /*强制文字不换行(标准浏览器)*/
	width:170px; 
	height:14px;
}
</style>
<script type="text/javascript">
function del()
{
if(confirm("确定要删除吗？"))
{
return true;
}
return false;
}
</script>
</head>

<body>
	<div class="body">
		<div class="top">
			<img alt="" src="image/manager_top.jpg" />
		</div>
		<div class="left">
			<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div class="right">
			<center>
				<h1>团队项目管理</h1>
			</center>
		


			<table cellspacing="0" align=center border="1"
				style="border-color: #EFF2FF">
				<colgroup>
					<col class="odd" />
					<col class="even" />
					<col class="odd" />
					<col class="even" />
					<col class="odd" />
					<col class="even" />
					<col class="odd" />
				
				</colgroup>
				<tr>
					<td height="30px" class="head1" width="60px">编号</td>
					<td class="head2" width="100px">名称</td>
					<td class="head1" width="170px">开发者</td>
					<td class="head2" width="200px">图片</td>
					<td class="head2" width="150px">链接</td>
					<td class="head1" width="60px">删除</td>
					<td class="head2" width="60px">更新</td>
				</tr>
				<s:iterator value="listProject" id="project" status="status">
					<tr>
						<td><s:property value="#project.id" />
						</td>
						<td><div class="projectname"><s:property value="#project.title" /></div></td>
						<td><div class="developers"><s:property value="#project.developers" /></div></td>
						<td><s:property value="#project.picsite" /></td>
						<td><s:property value="#project.link" /></td>

						<td><input type="button" value="删除" name="删除"
							onclick="window.location='delete_project.action?project.id=<s:property value="#project.id"/>';return del()"></input>
						</td>
						<td><input type="button" value="更新" name="更新"
							onclick="window.location='list_project_to_update.action?project.id=<s:property value="#project.id"/>'"></input>

						</td>

					</tr>
				</s:iterator>

				<s:iterator value="pagebean">
					<tr>
					<td><input type="button" value="添加" name="添加"
							onclick="window.location='addproject.jsp'"></input>
						</td>
					<td colspan="12"><s:if test="%{currentPage == 1}">
							<input type="button" disabled="disabled" value="第一页" />
							<input type="button" disabled="disabled" value="上一页" />
						</s:if> <s:else>
							<a href="project_page_Action.action?page=1"><input
								type="button" value="第一页" /></a>
							

							<a
								href="project_page_Action.action?page=<s:property value="%{currentPage-1}"/>"><input
								type="button" value="上一页" /></a>
							
						</s:else>
						共 <font color="red"><s:property
								value="allRow" />
					</font> 条记录 
						 当前是第 <font color="red"><s:property value="currentPage" /></font>/<font color="red"><s:property value="totalPage" />
					</font> 页
						 <s:if test="%{currentPage != totalPage}">
							<a
								href="project_page_Action.action?page=<s:property value="%{currentPage+1}"/>"><input
								type="button" value="下一页" /></a>
							<a
								href="project_page_Action.action?page=<s:property value="totalPage"/>"><input
								type="button" value="最后一页" /></a>
						</s:if> <s:else>
							<input type="button" disabled="disabled" value="下一页" />
							<input type="button" disabled="disabled" value="最后一页" />
						</s:else>
						
						</td>
					
					</tr>

				</s:iterator>







				<tr></tr>

			</table>
		</div>




	</div>


</body>
</html>
