<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>查看管理员</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/back_manage.css" />
<link rel="shortcut icon" href="image/news_title_pic.png">
<style type="text/css">
body,html {
	width:1004px;
	padding:0px;
	margin: 0px auto;          /*设置居中  */
	text-align:center;         /*兼容性更好  */
}
</style>
<script type="text/javascript">
function del()
{
var gnl=confirm("你真的确定要删除吗?"); 
if (gnl==true){ 
return true; 
} 
else{ 
return false; 
} 
}



</script>
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
		<center><h1>管理员帐号修改</h1></center>
		
		<form action="update_admin.action" method="post">
		<center>
		<table>
		<tr>
		<td>
		<s:hidden name="admin.id" rows="1" cols="10" value="%{admin.id}"></s:hidden>

	<s:textfield name="admin.adminname" value="%{admin.adminname}" label="帐号："></s:textfield>
	</td>
	</tr>
	<tr>
		<td>
 <s:textfield name="admin.password" value="%{admin.password}" label="密码："></s:textfield>
</td></tr><tr>
<td></td>
		<td>
   <input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"
					onclick="javascript:history.go(-1)" value="取消" />
					</td></tr>
					</table>
        </center>
        </form>
		</div>
	</div>

</body>
</html>
