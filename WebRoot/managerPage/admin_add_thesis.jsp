<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>添加科技前沿</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
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
		<div class="right" align="center">
			<center>
				<h3>科技前沿添加</h3>
			</center>
			<form action="save_thesis.action" method="post">
				标题<input type="text" name="thesis.title" /> 作者<input type="text"
					name="thesis.author" /><br>
				<textarea id="textarea" name="thesis.content">
  	</textarea>

				<input type="submit" value="提交" /> <input type="button"
					onclick="javascript:history.go(-1)" value="取消" />
			</form>
			<script type="text/javascript">
				UE.getEditor("textarea");
			</script>

		</div>
	</div>
</body>
</html>
