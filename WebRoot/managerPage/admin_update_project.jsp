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

<title>项目信息更新</title>
<link rel="stylesheet" type="text/css" href="css/back_manage.css">
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
}
</style>

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
				<h1>项目信息更新</h1>
			</center>
	
			<form action="managerPage/update_project.jsp" method="post" enctype="multipart/form-data">
		
				<table cellspacing="2" border=0 align=center  style="background-color: #EFF2FF;border-color:#EFF2FF">
					<colgroup>
		<col class="odd" />
		<col class="even" />
	
		</colgroup>
				<s:hidden name="id" rows="1" cols="10" value="%{project.id}"></s:hidden>	
					<tr><td>
						<s:textarea cssStyle="width:450px;height:30px;resize:none " name="title" rows="1" cols="30"
							value="%{project.title}" label="名称"></s:textarea></td></tr>
						<tr><td>
						<s:textarea name="developers" rows="1" cols="30"
							value="%{project.developers}" label="开发者" cssStyle="width:450px;height:50px;resize:none "></s:textarea></td></tr>
						<tr><td>
						
						<s:textarea name="technology" rows="1" cols="30"
							value="%{project.technology}" label="技术简介" cssStyle="width:450px;height:250px;resize:none "></s:textarea></td></tr>
						<tr><td>
						<s:textarea name="link" rows="1" cols="30"
							value="%{project.link}" label="链接" cssStyle="width:450px;height:30px;resize:none "></s:textarea></td></tr>

						<tr><td> 选择图片</td><td><input type="file" name="file"/></td></tr>

						<tr  align="left"><td></td>
						<td><input type="submit" value="提交" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
						<input type="button"
					onclick="javascript:history.go(-1)" value="取消" /></td></tr>
						</table>
			
			</form>
		</div>




	</div>


</body>
</html>
