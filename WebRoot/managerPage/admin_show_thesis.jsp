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

<title>科技前沿管理</title>
<link rel="shortcut icon" href="image/news_title_pic.png">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/back_manage.css">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
<script type="text/javascript" src="javascript/jQuery-1.4.2.min.js"></script>
<script type="text/javascript" src="javascript/Nivo-Slider.min.js"></script>
<script type="text/javascript">
 		
 		function del() {
 		if(confirm("你确定要删除吗?"))
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
		<div class="right" align="center">
			<center>
				<h1>科技前沿管理</h1>
			</center>


			<table cellspacing="0" border="1" style="border-color: #EFF2FF">
				<colgroup>
					<col class="odd" />
					<col class="even" />
					<col class="odd" />
					<col class="even" />
					<col class="odd" />
					<col class="even" />
				</colgroup>
				<tr>
					<td height="30px" width="60px">编号</td>
					<td width="340px">标题</td>
					<td width="180px">作者</td>
					<td width="100px">发表时间</td>
					<td width="60px">删除</td>
					<td width="60px">更新</td>
					
				</tr>
				<s:iterator value="list_thesis" id="thesis">
					<tr>
						<td><s:property value="#thesis.id" />
						</td>
						<td><s:property value="#thesis.title" />
						</td>
						<td><s:property value="#thesis.author" />
						</td>
						<td><s:date name="#thesis.datetime" format="yy-MM-dd HH:mm"></s:date>
						</td>
						
						<td><s:a href="delete_thesis.action?thesis.id=%{#thesis.id}"
								onclick="return  del()">
								<input type="button"  value="删除" />
							</s:a>
						</td>
						<td><s:a href="revise_thesis.action?thesis.id=%{#thesis.id}">
								<input type="button" value="更新" />
							</s:a>
						</td>
					</tr>
				</s:iterator>
				<s:iterator value="pagebean">
					<td><form action="managerPage/admin_add_thesis.jsp">
							<input type="submit"  style="margin-top:12px"  value="添加">
							</form>
						
					<td ColSpan=6><s:if test="%{currentPage == 1}">
							<input type="button" disabled="disabled" value="第一页" />
							<input type="button" disabled="disabled" value="上一页" />
						</s:if> <s:else>
							<a href="list_all_thesis.action?page=1"><input type="button"
								value="第一页" /></a>

							<a
								href="list_all_thesis.action?page=<s:property value="%{currentPage-1}"/>"><input
								type="button" value="上一页" /></a>
						</s:else>
						共 <font color="red"><s:property
								value="allRow" />
					</font> 条记录 
						 当前是第 <font color="red"><s:property value="currentPage" /></font>/<font color="red"><s:property value="totalPage" />
					</font> 页
						<s:if
							test="%{currentPage != totalPage}">
							<a
								href="list_all_thesis.action?page=<s:property value="%{currentPage+1}"/>"><input
								type="button" value="下一页" /></a>
							<a
								href="list_all_thesis.action?page=<s:property value="totalPage"/>"><input
								type="button" value="最后一页" /></a>
						</s:if> <s:else>
							<input type="button" disabled="disabled" value="下一页" />
							<input type="button" disabled="disabled" value="最后一页" />
						</s:else></td>




				</s:iterator>

			</table>
		</div>
	</div>
</body>
</html>
