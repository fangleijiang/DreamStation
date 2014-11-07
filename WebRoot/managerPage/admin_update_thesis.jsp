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
<title>科技前沿修改</title>
<link rel="stylesheet" type="text/css" href="css/back_manage.css">
<script type="text/javascript" src="editor/editor_config.js"></script>
<script type="text/javascript" src="editor/editor_all.js"></script>
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
		<h2 align="center">科技前沿管理</h2>
			<center>
				<form action="update_thesis.action" method="post">
					<s:hidden cssStyle="width:300px;height:30px;resize:none "
						readonly="true" value="%{thesis.id}" name="thesis.id" />
					<span style="font-size:25px;">标题<s:textarea cssStyle="width:300px;height:24px;resize:none "
						value="%{thesis.title}" name="thesis.title" />
					作者<s:textarea cssStyle="width:300px;height:24px;resize:none "
						name="thesis.author" value="%{thesis.author}"></s:textarea></span>
					<s:hidden cssStyle="width:300px;height:30px;resize:none "
						readonly="true" value="%{thesis.datetime}" name="thesis.datetime"
						format="yy-MM-dd HH:mm" />
					<s:textarea
						value="%{thesis.content}" id="textarea" name="thesis.content" />
					<input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"
					onclick="javascript:history.go(-1)" value="取消" />
				</form>
				<script type="text/javascript">
					UE.getEditor("textarea");
				</script>
			</center>
		</div>
	</div>

</body>
</html>
