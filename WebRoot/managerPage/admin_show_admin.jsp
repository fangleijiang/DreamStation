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
		<center><h2>管理员管理</h2></center>
		<table  align=center  cellspacing="0" border="1" style="border-color: #EFF2FF">
		<colgroup>
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		
</colgroup>
		  <tr>
                              
                              
                              <td width="60px" height="30px"class="head1">编号</td>
                   				<td width="120px" class="head2">管理员帐号</td>
                   				<td width="180px" class="head2">密码</td>
                              <td width="60px" class="head1">删除</td>
                               <td width="60px" class="head2">更新</td>
                              </tr>
 	 <s:iterator value="#request.list_admin" id="list_admin" status="status">
                                 <tr>
                                 <td><s:property value="#list_admin.id"/></td>
                           		<td><s:property value="#list_admin.adminname"/></td>
                           		<td><s:property value="#list_admin.password"/></td>
                             <td>
                           
                              <input type="button" value="删除" name="删除" onclick="window.location='delete_admin.action?admin.id=<s:property value="#list_admin.id"/>';return del()"></input>
                               </td>
                                 <td>
                            <input type="button" value="更新" name="更新" onclick="window.location='list_admin_by_id.action?admin.id=<s:property value="#list_admin.id"/>'"></input>
                               </td>
                              </tr>
                         </s:iterator>
                         <tr>
                         <td>
                          <input type="button" value="添加" name="添加" onclick="window.location='managerPage/add_admin.jsp'"></input>
                         </td>
                       <td></td>
                         <td></td>
                          <td width="50px" class="head1"></td>
                               <td width="50px" class="head2"></td>
                               
                         
                         </tr>
                         
		</table>
		</div>
	</div>

</body>
</html>
