<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<!-- Site Title -->
<title>留言板</title>

<!-- Meta Data -->

<meta name="keywords"
	content="photography, commercials, exposure videos, senior pictures">
<meta name="description" content="Your company description.">
<meta name="author" content="TutToaster.com/authors/CodyRobertson">
<meta name="copyright" content="Copyright 2010 TutToaster.com">
<meta name="robots" content="follow, index">
<link rel="shortcut icon" href="image/news_title_pic.png">
<!-- Site Theme Styling -->
<link rel="stylesheet" type="text/css" href="css/back_manage.css">


<!--[if lt IE 9]>
        <script type="text/javascript" src="javascript/HTML5-Shiv.js"></script>
        <![endif] -->
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
.nikename{
text-overflow:ellipsis;
overflow:hidden; 
white-space:nowrap; 
width:100px;
text-align: center;
}
.test
{
    overflow:hidden;
    text-overflow:ellipsis;  /*截断文字，显示省略号(...)*/
    -o-text-overflow:ellipsis;  /*Opera的专用截断文字的属性*/
	white-space:nowrap !important;  /*强制文字不换行(标准浏览器)*/
	width:165px; 
	height:14px;
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
		<div class="right">
			<center>
				<h1>留言管理</h1>
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
					<col class="even" />
					<col class="odd" />
				</colgroup>
				<tr>
					<td height="30px" width=60px>编号</td>
					<td width=100px>昵称</td>
					<td width=165px>留言内容</td>
					<td width=60px>留言时间</td>
					<td width=165px>回复内容</td>
					<td width=60px>回复时间</td>
					<td width=70px>审核状态</td>
					<td width=60px>审核</td>
					<td width=60px>删除</td>
				</tr>
				<s:iterator value="list_message" id="message">
					<tr>
						<td ><s:property value="#message.id" />
						</td>
						<td><div class="nikename"><s:property value="#message.nickname" /></div>
						</td>
						<td><div class="test"><s:property
								value="#message.comment" /></div>
						</td>
						<td><s:date name="#message.commentTime"
								format="yy-MM-dd HH:mm"></s:date>
						</td>
						<td><div class="test"><s:property
								value="#message.reply" /></div>
						</td>
						<td><s:date name="#message.replyTime"
								format="yy-MM-dd HH:mm"></s:date>
						</td>
						<td><s:if
								test="#message.state==0">0:未审核</s:if> <s:elseif
								test="#message.state==1">1:审核通过</s:elseif></td>
						<td><s:if test="#message.state==1">
								<input type="button" disabled="disabled" value="已审核" />
							</s:if>
							<s:else>
								<s:a href="reply_message.action?message.id=%{#message.id}">
									<input type="button" value="审核" />
								</s:a>
							</s:else>
						</td>
						<td><s:a
								href="delete_message.action?message.id=%{#message.id}"
								onclick="return  del()">
								<input type="button" value="删除" />
							</s:a>
						</td>
					</tr>
				</s:iterator>

				<s:iterator value="pagebean">


					<td colspan="12"><s:if test="%{currentPage == 1}">
							<input type="button" disabled="disabled" value="第一页" />
							<input type="button" disabled="disabled" value="上一页" />
						</s:if> <s:else>
							<a href="list_all_messages.action?page=1"><input
								type="button" value="第一页" /></a>
							

							<a
								href="list_all_messages.action?page=<s:property value="%{currentPage-1}"/>"><input
								type="button" value="上一页" /></a>
							
						</s:else>
						共 <font color="red"><s:property
								value="allRow" />
					</font> 条记录 
						 当前是第 <font color="red"><s:property value="currentPage" /></font>/<font color="red"><s:property value="totalPage" />
					</font> 页
						 <s:if test="%{currentPage != totalPage}">
							<a
								href="list_all_messages.action?page=<s:property value="%{currentPage+1}"/>"><input
								type="button" value="下一页" /></a>
							<a
								href="list_all_messages.action?page=<s:property value="totalPage"/>"><input
								type="button" value="最后一页" /></a>
						</s:if> <s:else>
							<input type="button" disabled="disabled" value="下一页" />
							<input type="button" disabled="disabled" value="最后一页" />
						</s:else>
						
						</td>




				</s:iterator>

			</table>
		</div>
	</div>

</body>
</html>
