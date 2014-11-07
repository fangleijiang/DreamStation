<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.jspsmart.upload.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>上传项目</title>
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
  </head>
  
  <body>
   <div class="body">
		<div class="top">
		<img alt="" src="image/manager_top.jpg"/>
		</div>
		<div class="left">
		<jsp:include page="managerPage/left.jsp"></jsp:include>
		</div>
		<div class="right">
		<center><h1>上传项目</h1></center>
		
		
		<form action="uploadpic.jsp" method="post" enctype="multipart/form-data"> 
		<center>
		<table cellspacing="2" border=0 align=center  style="background-color: #EFF2FF;border-color:#EFF2FF">
					<colgroup>
		<col class="odd" />
		<col class="even" />

		</colgroup>
		<tr><td>
		  项目名称</td><td><input type="text" name="title" Style="width:450px;height:30px;resize:none "></td></tr>
		<tr><td> 开发者</td><td><input type="text" name="developers" Style="width:450px;height:30px;resize:none "></td></tr>
		  <tr><td> 技术简介</td><td><textarea name="technology" Style="width:450px;height:250px;resize:none "></textarea></tr>
		  <tr><td>  项目链接</td><td><input type="text" name="link" Style="width:450px;height:30px;resize:none "></td></tr>
		
  		 <tr><td> 选择文件</td><td><input type="file" name="file"/></td></tr>
  		 <tr><td></td><td><input type="submit" name="上传">&nbsp;&nbsp;&nbsp;&nbsp;
  		<input type="button" onclick="javascript:history.go(-1)"
							value="取消" /></td></tr>
  		</table>
  		</center>
  
  </form>
		
		
		
		
            </div>
		
		</div>
  </body>
</html>
