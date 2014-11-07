<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>更新新闻</title>

<script type="text/javascript">
	function cancel() {
		location.href="listNews.action";
		
	}
	</script>
	<script>
function goBack()
  {
  window.history.back();
  }
</script>
	
	<script type="text/javascript" src="editor/editor_config.js"></script>
    <script type="text/javascript" src="editor/editor_all.js"></script>
      <link rel="stylesheet" type="text/css" href="css/back_manage.css">
      <link rel="shortcut icon" href="image/news_title_pic.png">
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
	<h3><font color="red">更新新闻</font></h3>
	<form action="updateNews.action" method="post">
	        
	        <s:hidden name="news.id" value="%{news.id}"></s:hidden>
            <s:textfield name="news.title" label="标题" size="50" value="%{news.title}"></s:textfield>	
			<s:textfield name="news.author" label="作者" size="20" value="%{news.author}"></s:textfield><br>
			<center><s:textarea id="wms" name="news.content" value="%{news.content}">
 	
  		</s:textarea>
  		</center>
			<input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"
					onclick="javascript:history.go(-1)" value="取消" />

		</form>
		 <script type="text/javascript">
			UE.getEditor("wms");
		</script>
			</center>
		
		
		</div>
		</div>
	
</body>
</html>
