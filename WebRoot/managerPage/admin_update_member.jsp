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

<title>成员信息更新</title>
<link rel="stylesheet" type="text/css" href="css/back_manage.css">
<link rel="shortcut icon" href="image/news_title_pic.png">
<style type="text/css">
body,html {
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
			<img alt="" src="image/manager_top.jpg" />
		</div>
		<div class="left">
			<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div class="right">
			<center>
				<h1>成员信息更新</h1>
			</center>
			<br>

			<form action="update_upload_member_pic.jsp" method="post" enctype="multipart/form-data">
				<center>
				<table cellspacing="2" border=0 align=center  style="background-color: #EFF2FF;border-color:#EFF2FF">
					<colgroup>
		<col class="odd" />
		<col class="even" />
	
		</colgroup>
				
				<tr><td>
					<s:hidden name="id" rows="1" cols="10"
						value="%{member.id}" readonly="true" cssStyle="resize:none"></s:hidden>
				</td></tr>

					<tr><td>	
						<s:textarea name="name" rows="1" cols="30"
							value="%{member.name}" label="名     字" cssStyle="width:450px;height:30px;resize:none"></s:textarea></td></tr>
						<tr><td>
						<s:textarea name="introduction" rows="1" cols="30"
							value="%{member.introduction}" label="介     绍"  cssStyle="resize:none;width:450px;height:200px"></s:textarea></td></tr>
					<tr><td>     
						<s:textarea name="grade_major" rows="1" cols="30"
							value="%{member.grade_major}" label=" 年级专业"  cssStyle="width:450px;height:30px;resize:none"></s:textarea></td></tr>
						<tr><td>部&nbsp;&nbsp;门</td>
						<td><select name="category">
						<option value="#" selected="selected">请选择</option>
  									<option value ="teacher">导师</option>
 									 <option value ="programmer">程序组</option>
 									 <option value="painting">美工组</option>
  									
							</select></td></tr>
						<tr><td>
						<s:file name="image_small" rows="1" cols="30"
							value="%{member.image_small}" label="小图片"></s:file></td></tr>
					      <tr><td>
						<s:file name="image_big" rows="1" cols="30" 
							value="%{member.image_big}" label="大图片"></s:file></td></tr>

						<tr><td></td><td><input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"
					onclick="javascript:history.go(-1)" value="取消" /></td></tr>
						</table>
				</center>
			</form>
		</div>




	</div>


</body>
</html>
