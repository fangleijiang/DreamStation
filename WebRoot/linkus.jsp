<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
   <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>联系我们</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/linkus.css">
	<link rel="shortcut icon" href="image/news_title_pic.png">
	<script type="text/javascript">
	function getbiaoji() {
            var lng = document.getElementByIdx_x("lng").value;
            var lat = document.getElementByIdx_x("lat").value;

            var map = new BMap.Map("container");
            var point = new BMap.Point(lng, lat);
            var marker = new BMap.Marker(point);
            var opts = {
                width: 200,     // 信息窗口宽度  
                height: 80,     // 信息窗口高度  
                
            };
            var infoWindow = new BMap.InfoWindow("欢迎光临长沙理工大学云塘校区" + lng + lat, opts);  // 创建信息窗口对象


            marker.enableDragging(); //启用拖拽
            map.addControl(new BMap.NavigationControl()); //左上角控件
            map.enableScrollWheelZoom(); //滚动放大
            map.enableKeyboard(); //键盘放大

            map.centerAndZoom(point, 13); //绘制地图
            map.addOverlay(marker); //标记地图

            map.openInfoWindow(infoWindow, map.getCenter());
        }

        function loand() {
            var map = new BMap.Map("container");
            var point = new BMap.Point(113.02, 28.07); //默认中心点
            var marker = new BMap.Marker(point);
            var opts = {
                width: 200,     // 信息窗口宽度  
                height: 80,     // 信息窗口高度  
              
            };
            var infoWindow = new BMap.InfoWindow("欢迎光临长沙理工大学云塘校区（梦之站）", opts);  // 创建信息窗口对象


            marker.enableDragging(); //启用拖拽
            marker.addEventListener("dragend", function (e) {
                point = new BMap.Point(e.point.lng, e.point.lat); //标记坐标（拖拽以后的坐标）
                marker = new BMap.Marker(point);

                document.getElementByIdx_x("lng").value = e.point.lng;
                document.getElementByIdx_x("lat").value = e.point.lat;
                infoWindow = new BMap.InfoWindow("当前位置<br />经度：" + e.point.lng + "<br />纬度：" + e.point.lat, opts);

                map.openInfoWindow(infoWindow, point);
            });

            map.addControl(new BMap.NavigationControl()); //左上角控件
            map.enableScrollWheelZoom(); //滚动放大
            map.enableKeyboard(); //键盘放大

            map.centerAndZoom(point, 13); //绘制地图
            map.addOverlay(marker); //标记地图

            map.openInfoWindow(infoWindow, map.getCenter());      // 打开信息窗口      
        }
         
	</script>
 <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<style type="text/css">
body,html{
 		width:1004px;
		padding:0px;
		margin: 0px auto;          /*设置居中  */
		text-align:center;         /*兼容性更好  */

}
   #container
        {
            width:540px;
            height: 400px;
           
        
        }
        a img
	{ 
				border:none;
	}
</style>
  </head>
  
  <body onload="loand()">
 
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
<s:iterator value="#request.list" id="Linkus" status="status">
<div class="content">
<s:property value="#Linkus.phone" escape="false"/>
</div>
<div class="content2">
<s:property value="#Linkus.qq" escape="false"/>
</div>
<div class="content3">
<s:property value="#Linkus.email" escape="false"/>
</div>
<div class="content4">
<s:property value="#Linkus.address" escape="false"/>
</div>
</s:iterator>
<div class="di_tu">
 <div id="container">
    </div>
    </div>
      <div class="copyright">
		<jsp:include page="Copyright.jsp"></jsp:include>
		</div> 
	
   </div>

  </body>
</html>
