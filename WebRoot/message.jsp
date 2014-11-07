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
<script type="text/javascript" src="javascript/jQuery-1.4.2.min.js"></script>
	<script type="text/javascript" src="javascript/Nivo-Slider.min.js"></script>
<link rel="stylesheet" href="css/Message_board.css" />
<SCRIPT language=JavaScript>
	function length() {
		messageCount.innerText = document.addform.request.value.length;//如果文本框中有字符加载页面就计算其个数
	}

	function textLimitCheck(thisArea, minLength, maxLength) {//根据onkeyup事件计算文本框中的字符个数，限制在一定字数以内
		if (thisArea.value.length > maxLength) {
			alert("您输入的文字已超出上限！");
			thisArea.value = thisArea.value.substring(0, maxLength);
			thisArea.focus();
		}
		/*回写span的值，当前填写文字的数量*/
		messageCount.innerText = thisArea.value.length;
	}
	function comment_Audit() {
		alert("您好！您的留言已发布，管理员审核中，谢谢！");
	}

	function check() {
		var x = document.getElementsByName("message.nickname")[0].value;
		var y = document.getElementsByName("message.comment")[0].value;
		if (x == null || x == "" || y == null || y == "") {
			alert("请保证昵称和留言内容不为空！");
			return false;
		}
		alert("您的留言已发布，等待管理员审核！");
		return true;
	}
</SCRIPT>
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
<body onLoad="length()">
	
	<div id="background">
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
		<div class="content01">
			<form action="comment_message.action" method="post" name="form1"
				onsubmit="return check()">
				<div class="nikename01"><font face="微软雅黑">昵 称</font></div>
				<input id="request00" style="font-family: 微软雅黑;font-size: 20px" type="text" class="nikenametext"
					name="message.nickname" onKeyUp="textLimitCheck(this,0,10);" />
				<div class="warn00">
					<br>&nbsp;<font face="微软雅黑" size="2px">请保持昵称字数在0~10字之间，谢谢！</font>
				</div>
				<s:textarea id="request01" cssStyle="font-family: 微软雅黑;font-size: 18px" cssClass="container01"
					name="message.comment" onKeyUp="textLimitCheck(this,0,100);"></s:textarea>
				<font face="微软雅黑"><input type="submit" value="发   表" class="position" /></font>
			 	<div class="warn01"><font face="微软雅黑" size="2px">请保持留言字数在0~100字之间，谢谢！</font></div> 
				
			</form>
		</div>

		<s:iterator value="pagebean">
			<div class="page">
				<div class="blank02"></div>
				<div class="massage_count">
					&nbsp;(
					<s:property value="allRow" />
					)
				</div>
				<div class="massage_page">
					<s:if test="%{currentPage == 1}">
						<input type="button" disabled="disabled" style="font-family: 微软雅黑;font-size: 10px" value="第一页" />
						<input type="button" disabled="disabled" style="font-family: 微软雅黑;font-size: 10px" value="上一页" />
					</s:if>
					<s:else>
						<a href="client_page_action.action?page=1"><input style="font-family: 微软雅黑;font-size: 10px"
							type="button" value="第一页" /> </a>

						<a
							href="client_page_action.action?page=<s:property value="%{currentPage-1}"/>"><input style="font-family: 微软雅黑;font-size: 10px"
							type="button" value="上一页" /> </a>

					</s:else>
					<font color="blue"><s:property value="currentPage" /></font>/<font color="blue"><s:property value="totalPage" /> </font>
					<s:if test="%{currentPage != totalPage}">
						<a
							href="client_page_action.action?page=<s:property value="%{currentPage+1}"/>"><input style="font-family: 微软雅黑;font-size: 10px"
							type="button" value="下一页" /> </a>
						<a
							href="client_page_action.action?page=<s:property value="totalPage"/>"><input style="font-family: 微软雅黑;font-size: 10px"
							type="button" value="最后一页" /> </a>
					</s:if>
					<s:else>
						<input type="button" style="font-family: 微软雅黑;font-size: 10px" disabled="disabled" value="下一页" />
						<input type="button" style="font-family: 微软雅黑;font-size: 10px" disabled="disabled" value="最后一页" />
					</s:else>
				</div>

			</div>
		</s:iterator>


		<div class="content02">
			
			<s:iterator value="list_message" id="message">
			<s:if test="#message.state != 0">
				<div class="content03">
				<div class="content04">
					
						<div class="head_user">
							<img src="image/head_user.png" />
						</div>
						<div class="nickname02">
							&nbsp;<font color="blue" size="4px" face="微软雅黑"><s:property
									value="#message.nickname" /> </font>
						</div>
						<div class="commentTime">
							<font color="#0090FF" size="2px" face="微软雅黑"><s:date name="#message.commentTime"
									format="yy-MM-dd HH:mm"></s:date> </font>
						</div>
						<div class="comment">
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="black" size="3px"
								face="微软雅黑"><s:property value="#message.comment" /> </font>
						</div>
						<div class="admin_user">
							<img src="image/head_admin.png" />
						</div>
						<div class="admin">
							<font color="red" size="4px" face="微软雅黑">回复</font>
						</div>
						<div class="replyTime">
							<font color="#0090FF" size="2px" face="微软雅黑"><s:date name="#message.replyTime"
									format="yy-MM-dd HH:mm"></s:date> </font>
						</div>
						<div class="reply">
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="black" size="3px"
								face="微软雅黑"><s:property value="#message.reply" /> </font> <br>
						</div>
					<br>
			
		
				
				</div>
				
				</div>
				</s:if>
			</s:iterator>
		
		</div>
  <div class="copyright">
  <jsp:include page="Copyright.jsp"></jsp:include>
		</div> 
	
	</div>

</body>
</html>
