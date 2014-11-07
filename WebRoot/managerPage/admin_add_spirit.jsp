<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>团队精神管理</title>
	<link rel="stylesheet" type="text/css" href="css/back_manage.css">
	<link rel="shortcut icon" href="image/news_title_pic.png">
<style type="text/css">
  body,html{
           width: 1004px;
		padding: 0px;
		margin: 0px auto; /*设置居中  */
		text-align: center; /*兼容性更好  */
        }

</style>
<script type="text/javascript" src="editor/editor_config.js"></script>
    <script type="text/javascript" src="editor/editor_all.js"></script>
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
		<center><h1>添加团队精神</h1></center>
		
		<form action="add_spirit.action" method="post">
		<center>
	 标题：  <input type="text" name="spirit.title" style="resize:none; width:400px"/><p>
         <textarea name="spirit.spirit" id="textarea" rows="20" cols="80" id="wms"></textarea><p>
   <input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"
					onclick="javascript:history.go(-1)" value="取消" />
        </center>
         <script type="text/javascript">
    	UE.getEditor("textarea");
    </script>
        </form>
        
            </div>
		
		
		
		
		</div>


  </body>
</html>
