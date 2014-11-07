<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="pragma" content="梦之站">
<meta http-equiv="cache-control" content="梦之站">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="梦之站">
<meta http-equiv="description" content="梦之站">
</head>

<%
response.sendRedirect("list_info_to_index.action");
%>

</html>