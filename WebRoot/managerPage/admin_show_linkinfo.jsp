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

<title>联系我们管理</title>
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
<script type="text/javascript">
function del()
{
if(confirm("确定要删除吗？"))
{
return true;
}
return false;
}
</script>
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
				<h1>联系我们管理</h1>
			</center>
		

<table cellspacing="0" align=center border="1" style="border-color: #EFF2FF">
		<colgroup>
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
</colgroup>
				<tr>


					<td height="30px"class="head1" width="60px">编号</td>
					<td class="head2" width="140px">电话</td>
					<td class="head1" width="100px">qq</td>
					<td class="head2" width="140px">邮箱</td>
					<td class="head1" width="240px">联系地址</td>
					<td class="head2" width="60px">删除</td>
					<td class="head1" width="60px">更新</td>
				</tr>
				<s:iterator value="#request.list" id="linkus" status="status">
					<tr>
						<td><s:property value="#linkus.id" />
						</td>
						<td><s:property value="#linkus.phone" />
						</td>
						<td><s:property value="#linkus.qq" />
						</td>
						<td><s:property value="#linkus.email" />
						</td>
						<td><s:property value="#linkus.address" />
						</td>

						<td>
							<input type="button" value="删除" name="删除" onclick="window.location='delete_link_info.action?linkus.id=<s:property value="#linkus.id" />';return del()"></input>
							</td>
						<td>
							 <input type="button" value="更新" name="更新" onclick="window.location='update_link_info.action?linkus.id=<s:property value="#linkus.id"/>'"></input>
							</td>
					</tr>
				</s:iterator>
				<tr>
				</tr>

			</table>
		</div>




	</div>


</body>
</html>
