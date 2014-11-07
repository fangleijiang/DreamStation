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

<title>新闻内容</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="image/news_title_pic.png">
<link rel="stylesheet" type="text/css" href="css/news_article.css">
<style type="text/css">
body,html {
	width: 1004px;
	padding: 0px;
	margin: 0px auto; /*设置居中  */
	text-align: center; /*兼容性更好  */
}
#divPagenation {
	position: absolute;
	left: 650px;
	top: 1170px;
}
</style>
</head>
<body>
	<div class="body">

		<div class="nav_bulb">
		<div class="nav">
			<a href="list_info_to_index.action"><img
				src="image/border_11.gif"></a> <a href="list_front_image.action"
				target=""><img src="image/border_12.gif"></a> <a
				href="listFrontNews.action" target=""><img
				src="image/border_13.gif"></a> <a
				href="client_project_page_Action.action" target=""><img
				src="image/border_14.gif"></a>
		</div>
				<div class="bulb">
			<a href="client_page_action.action" target=""><img
				src="image/bulb.png"></img></a>
		</div>
		</div>
		<div class="content">
			
			<center>
				<div class="title">
					<div class="logo"></div>
					<div class="title_word">
						<font face="楷体" color="white"> <s:property
								value="%{news.title}" escape="false" /> </font>
					</div>
				</div>
				<div class="author"> 作者：<font face="楷体" size="4px"> <s:property
								value="%{news.author}" escape="false" /> </font></div>
			</center>
			
			<div class="article">
				<font size="3" face="微软雅黑"><s:property
						value="%{news.content}" escape="false" /> </font>
			</div>
			<div class="paging">
				<div class="front">
					
						<s:iterator value="#request.list1" var="list1">
							<s:if test="#list1!=null">
								<div class="front">
									<a
										href="Find_News_By_Id.action?page=<s:property value="%{pageBean.currentPage+1}"/>&&news.id=<s:property value="#list1.id" />"><font
										size="2" face="微软雅黑"><s:property value="#list1.title" />
									</font></a>
								</div>
							</s:if>
						</s:iterator>
				</div>
				<div class="back">
					<a href="listFrontNews.action"><font face="微软雅黑" size="2">返回新闻列表</font>
					</a>
				</div>
				<div class="next">
					<s:if test="%{news.id==1}"></s:if>
					<s:else>
						<s:iterator value="#request.list2" var="list2">
							<s:if test="#list2!=null">
								<div class="next">
									<a
										href="Find_News_By_Id.action?page=<s:property value="%{pageBean.currentPage-1}" />&&news.id=<s:property value="#list2.id" />"><font
										size="2" face="微软雅黑"><s:property value="#list2.title" />
									</font></a>
								</div>
							</s:if>
						</s:iterator>
					</s:else>
					<p>
				</div>
				<!-- Baidu Button BEGIN -->
				<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
					<span class="bds_more">分享到：</span> <a class="bds_qzone"></a> <a
						class="bds_tsina"></a> <a class="bds_tqq"></a> <a
						class="bds_renren"></a> <a class="bds_t163"></a> <a
						class="shareCount"></a>
				</div>
				<script type="text/javascript" id="bdshare_js"
					data="type=tools&amp;uid=6663966"></script>
				<script type="text/javascript" id="bdshell_js"></script>
				<script type="text/javascript">
					document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion="
							+ Math.ceil(new Date() / 3600000)
				</script>
				<!-- Baidu Button END -->
			</div>

		</div>

		<div class="copyright">
			<jsp:include page="Copyright.jsp"></jsp:include></div>

	</div>
</body>
</html>
