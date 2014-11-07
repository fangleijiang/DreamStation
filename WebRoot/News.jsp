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

<title>新闻动态</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="image/news_title_pic.png">
<link rel="stylesheet" type="text/css" href="css/News.css">
<style type="text/css">
body,html {
	width: 1004px;
	padding: 0px;
	margin: 0px auto; /*设置居中  */
	text-align: center; /*兼容性更好  */
}
a img
	{ 
				border:none;
				
	}

</style>

</head>

<body>

	<div class="body">
	<div class="nav_bulb">
	
		<div class="nav">
		  <a href="list_info_to_index.action"><img src="image/border_11.gif"></a>
			<a href="list_front_image.action" target=""><img src="image/border_12.gif"></a>
			<a href="listFrontNews.action" target=""><img src="image/border_13.gif"></a>
			<a href="client_project_page_Action.action" target=""><img src="image/border_14.gif"></a>
		</div>
		<div class="bulb">
	<a href="client_page_action.action" target=""><img src="image/bulb.png"></img></a>
	</div>
	</div>
		<div class="content" style="font-family: 微软雅黑">
			<s:iterator value="pageBean.list_news" id="news">
				<div class="news_introduce">

					<s:hidden value="#news.id" name="news.id" />
					<div class="picture"></div>
					<div class="title">
						<a href="Find_News_By_Id.action?news.id=${news.id}" target=""><s:property
								value="#news.title" />
						</a>
					</div>
					<%-- <div class="clickRate">
						<font face="楷体">点击量:<s:property value="#news.account" /></font>
					</div> --%>
					<div class="viewall"><a
						href="Find_News_By_Id.action?page=${pageBean.allRow}&&news.id=${news.id}" target=""><font
							color="#ABABAB" face="楷体">[查看全文]</font> </a></div>
					<div class="blank">
					<div class="auther">
						<font face="楷体" color="#ABABAB">作者:<s:property value="#news.author" /></font>
					</div>
					 <div class="datetime">
						<font face="楷体" color="#ABABAB">发布时间:<s:date name="#news.date" format="yyyy-MM-dd"></s:date></font>
					</div> 
					 <div class="clickRate">
					 <font face="楷体" color="#ABABAB">点击量:<s:property value="#news.account" /></font> 
					</div> 
					</div>
					
					<%--  <div class="clickRate">
						<font face="楷体">点击量:<s:property value="#news.account" /></font>
					</div>  --%>
					
				</div>
			</s:iterator>
		</div>
		<div class="pagebutton00" align="center">
			<s:iterator value="pageBean">
				<td></td>
				<td><s:if test="%{currentPage == 1}">
						<font size="2" face="微软雅黑" color="#ABABAB">第一页
						上一页</font>
					</s:if> <s:else>
						<font size="2" face="微软雅黑" color="#000000"><a href="listFrontNews.action?page=1">第一页</a>
						<a
							href="listFrontNews.action?page=<s:property value="%{currentPage-1}"/>">上一页</a></font>
					</s:else>&nbsp;<font size="2" face="微软雅黑" color="#000000">共 <font
						color="blue"><s:property value="allRow" /> </font>
						条记录&nbsp;&nbsp;当前 <font color="blue"><s:property
								value="currentPage" />
					</font>/<font color="blue"><s:property value="totalPage" /> </font>页</font>&nbsp;<s:if
						test="%{currentPage != totalPage}">
						<font size="2" face="微软雅黑" color="#000000"><a
							href="listFrontNews.action?page=<s:property value="%{currentPage+1}"/>">下一页</a>
						<a
							href="listFrontNews.action?page=<s:property value="totalPage"/>">最后一页</a></font>
					</s:if> <s:else>
						<font size="2" face="微软雅黑" color="#ABABAB">下一页
						最后一页</font>
					</s:else>
				</td>
			</s:iterator>
		</div>
		  <div class="copyright">
		<jsp:include page="Copyright.jsp"></jsp:include>
		</div> 
	</div>

</body>
</html>
