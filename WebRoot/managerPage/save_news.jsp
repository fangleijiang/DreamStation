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
<title>添加新闻</title>
 
<script type="text/javascript" src="editor/editor_config.js"></script>
    <script type="text/javascript" src="editor/editor_all.js"></script>
   <link rel="shortcut icon" href="image/news_title_pic.png">
     <link rel="stylesheet" type="text/css" href="css/back_manage.css">
    <style type="text/css">
  body,html{
            width: 1004px;
		padding: 0px;
		margin: 0px auto; /*设置居中  */
		text-align: center; 
        }
	
</style>
</head>

<body>
 <div class="body">
		<div class="top">
		<img alt="" src="image/manager_top.jpg"/>
		</div>
		<div class="left">
		<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div class="right">
		<center>
		<h3>
			<font color="black">增加新闻</font>
		</h3>
		<form method="post" action="saveNews.action">

			标题：<input name="news.title" type="text"  size="50"></input>	
			
			作者：<input name="news.author" type="text"  size="30"></input>	<br>
		<center><textarea id="wms" name="news.content" cols="100px" rows="20px">
 		Hello!
  		</textarea>
  		</center>
			<input type="submit" value="提交" />
			<input type="button"
					onclick="javascript:history.go(-1)" value="取消" />
		</form>
		 <script type="text/javascript">
			UE.getEditor("wms");
		</script>
	</center>
		
		
		</div></div>
	
</body>
</html>
