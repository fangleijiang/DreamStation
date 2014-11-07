<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>留言审核</title>
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
		<h1 align="center">
		“${message.nickname}”的留言正在审核
	</h1>
	<center>
		<s:form action="update_message.action" method="post">
			<table cellspacing="2" border=0 align=center  style="background-color: #EFF2FF;border-color:#EFF2FF">
				<colgroup>
		<col class="odd" />
		<col class="even" />
		
		</colgroup>
				<tr>
					
					<td ><s:textarea cssStyle="width:300px;height:30px;resize:none " readonly="true" value="%{message.id}" name="message.id" label="id号"/></td>
				</tr> 
				<tr>
				
					<td><s:textarea cssStyle="width:300px;height:30px;resize:none " readonly="true" value="%{message.nickname}" label="昵称" name="message.nickname"/></td>
				</tr>
				<tr>
		
					<td><s:textarea  cssStyle="width:300px;height:100px;resize:none " readonly="true" value="%{message.comment}" label="留言内容" name="message.comment"/></td>
				</tr>
				<tr>
					
					<td><s:textarea cssStyle="width:300px;height:30px;resize:none " readonly="true" value="%{message.commentTime}" label="留言时间" name="message.commentTime"
							format="yy-MM-dd HH:mm"/></td>
				</tr>
				<tr>

					<td><s:textarea cssStyle="width:300px;height:100px;resize:none " name="message.reply"   value="%{message.reply}"
							label="回复内容"></s:textarea></td>
				</tr>
				<tr>
					<td><s:radio list="#{'0':'未审核','1':'审核通过'}"
							name="message.state" label="审核状态"></s:radio></td>
				</tr>
				<tr>
					<td><s:submit value="回复">
							<input type="button" onclick="javascript:history.go(-1)"
								value="取消" />
						</s:submit></td>
				</tr>
			</table>
		</s:form>
	</center>
		</div>
		</div>
	
</body>
</html>
