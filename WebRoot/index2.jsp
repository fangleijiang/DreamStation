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

<title>梦之站首页</title>
<meta http-equiv="pragma" content="梦之站">
<meta http-equiv="cache-control" content="梦之站">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="梦之站">
<meta http-equiv="description" content="梦之站">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="shortcut icon" href="image/news_title_pic.png">
<%-- <script src="http://www.codefans.net/ajaxjs/jquery-1.4.2.min.js"></script> --%>
<script src="script/jquery-1.4.2.min.js"></script>

<script type="text/javascript">
	var browser = navigator.appName
	var b_version = navigator.appVersion
	var version = b_version.split(";");
	var trim_Version = version[1].replace(/[ ]/g, "");
	if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE9.0") {
		alert("请使用更高级版本的浏览器访问，效果更加");
	} else if (browser == "Microsoft Internet Explorer"
			&& trim_Version == "MSIE8.0") {
		alert("请使用更高级版本的浏览器访问，效果更加");
	} else if (browser == "Microsoft Internet Explorer"
			&& trim_Version == "MSIE7.0") {
		alert("请使用更高级版本的浏览器访问，效果更加");
	} else if (browser == "Microsoft Internet Explorer"
			&& trim_Version == "MSIE6.0") {
		alert("请使用更高级版本的浏览器访问，效果更加");
	}
</script>
<script>
	$(document).ready(
			function() {
				function tab4(o1, o2, o3, c, t1, t2, a, b) {
					var count = o1.size() - 1;
					var now;
					var TimeInterval;
					o1.each(function(i) {
						$(this).mouseover(function() {
							o2.hide().eq(i).show();
							o3.hide().eq(i).show();
							o1.removeClass(c);
							$(this).addClass(c);
							window.clearInterval(TimeInterval);
						}).mouseout(function() {
							now = i + 1;
							TimeInterval = window.setInterval(changeimage, t1);
						});
						//初始化显示
						if ($(this).hasClass(c)) {
							$(this).addClass(c);
							o2.hide().eq(i).show();
							o3.hide().eq(i).show();
							now = i + 1;
						}
					})

					TimeInterval = window.setInterval(changeimage, t1);
					function changeimage() {
						if (now > count)
							now = 0;
						o3.hide().eq(now).show();
						o2.hide().eq(now).stop().fadeTo(0, a).fadeTo(t2, b);
						o1.removeClass(c).eq(now).addClass(c);
						now++;
					}
				}

				tab4($(".name .name00"), $(".picture .picture00"),
						$(".picture .state00"), "on", 2500, 800, 0.1, 1);
			});
</script>
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
			<a href="list_info_to_index.action"><img src="image/border1.gif"></a>
			<a href="list_front_image.action" target=""><img src="image/border2.gif"></a>
			<a href="listFrontNews.action" target=""><img src="image/border3.gif"></a>
			<a href="client_project_page_Action.action" target=""><img src="image/border4.gif"></a>
		</div>
		<div class="bulb">
	<a href="client_page_action.action" target=""><img src="image/index_bulb.jpg"></img></a>
	</div>
	</div>
		<div class="news">
			<table width="500" border="0" align="center" cellpadding="1"
				cellspacing="1">
				<tr>
					<td width="500">
					
					<script>
						
						var marqueeContent = new Array(); //滚动主题 
						var i=0;
				</script>
				
				<s:iterator value="#request.list_news1" id="list_news">
					<script>
						marqueeContent[i] ='<a href="Find_News_By_Id.action?news.id=<s:property value="#list_news.id"/>" target=""><font size="2px" color="#0099CC"; face="微软雅黑"><s:property value="#list_news.title"/></font></a>';
						
						
						i++;
						</script>
						</s:iterator>
						
						<script>
						var marqueeInterval = new Array(); //定义一些常用而且要经常用到的变量 
						var marqueeId = 0;
						var marqueeDelay = 2000;
						var marqueeHeight = 15;
						function initMarquee() {
							var str = marqueeContent[0];
							document
									.write('<div id=marqueeBox style="overflow:hidden;height:'
											+ marqueeHeight
											+ 'px" onmouseover="clearInterval(marqueeInterval[0])" onmouseout="marqueeInterval[0]=setInterval(\'startMarquee()\',marqueeDelay)"><div>'
											+ str + '</div></div>');
							marqueeId++;
							marqueeInterval[0] = setInterval("startMarquee()",
									marqueeDelay);
						}
						function startMarquee() {
							var str = marqueeContent[marqueeId];
							marqueeId++;
							if (marqueeId >= marqueeContent.length)
								marqueeId = 0;
							if (marqueeBox.childNodes.length == 1) {
								var nextLine = document.createElement('DIV');
								nextLine.innerHTML = str;
								marqueeBox.appendChild(nextLine);
							} else {
								marqueeBox.childNodes[0].innerHTML = str;
								marqueeBox
										.appendChild(marqueeBox.childNodes[0]);
								marqueeBox.scrollTop = 0;
							}
							clearInterval(marqueeInterval[1]);
							marqueeInterval[1] = setInterval("scrollMarquee()",
									10);
						}
						function scrollMarquee() {
							marqueeBox.scrollTop++;
							if (marqueeBox.scrollTop % marqueeHeight == marqueeHeight) {
								clearInterval(marqueeInterval[1]);
							}
						}
						initMarquee();
					</script>
					
					</td>
				</tr>
			</table>

		</div>
		<div class="picture">
			<div class="body00">
				<div class="name">
				<s:iterator value="#request.list_index" id="index">
					<div class="name00 on">
						<a href="#" style="text-decoration:none"><font size="3px"
							face=微软雅黑><s:property value="#index.pic_name" escape="false"/></font>
						</a>
					</div>
			</s:iterator>
					
				</div>

				<div class="picture11">
				<s:iterator value="#request.list_index" id="index">
					<div class="picture00">
						<img src="<s:property value="#index.pic_address"/>" height="245px" width="500px" />
					</div>
					</s:iterator>
					
					<s:iterator value="#request.list_index" id="index">
					<div class="state00">
						<font face=微软雅黑><h3><s:property value="#index.pic_description" escape="false"/></h3>
						</font>
					</div>
					</s:iterator>

				</div>
				<div style="clear:both;"></div>
			</div>

		</div>

		<div class="linkus">
			<a href="List_linkus.action" target=""><font face="微软雅黑">联系我们</font>
			</a>
		</div>
			<div class="nav5">
			<div class="nav_link_pic_1"><a href="http://www.csust.edu.cn/" target="" title="长沙理工大学"><img width="20" height="20" src="image/icon_1.png"></a></div>
			<div class="nav_link_pic_2"><a href="http://www.csust.edu.cn/pub/cslg/jgsz/yxsz/jsjytxgcxy/" target="" title="长沙理工大学计算机与通信工程学院"><img width="20" height="20" src="image/icon_2.png"></a></div>
			<div class="nav_link_pic_3"><a href="#" target="" title="梦之站微博"><img width="20" height="20" src="image/icon_3.png"></a></div>

			
			
		<div class="nav2">
			<a href="http://blog.sina.com.cn/dreamstationblog" target=""><font
				size="2px" color="#0099CC" face="微软雅黑">链接到团队博客 </font>
			</a>
		</div>
		</div>
		<ul class="cst">
		<li class="culture"><a href="List_culture.action" target=""><font face="微软雅黑" color="#0099CC">团队文化</font></a></li>
		<li class="spirit"><a href="List_spirit.action" target=""><font face="微软雅黑" color="#0099CC">团队精神</font></a></li>
		<li class="technology"><a href="client_list_Page.action" target=""><font face="微软雅黑" color="#0099CC">科技前沿</font></a></li>
		</ul>
		
		<ul class="ma">
		<li class="message"><a href="client_page_action.action" target=""><font face="微软雅黑" color="#0099CC">留言板</font></a></li>
		<li class="admin"><a href="admin_login.jsp" target=""><font face="微软雅黑"  color="#0099CC">后台管理</font></a></li>
		</ul>
	<div class="copyright">
		<jsp:include page="Copyright.jsp"></jsp:include>
		</div> 
	</div>
</body>
</html>
