<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8" %>
<%@ page  import="IPTimeStamp.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="shortcut icon" href="image/news_title_pic.png">
    <title>上传成功</title>
  </head>
    <%request.setCharacterEncoding("UTF-8"); %>
  <body>
    <% 
  
    SmartUpload smart = new SmartUpload();
    smart.initialize(pageContext);
    smart.upload();

      String title  = smart.getRequest().getParameter("title");
 	String developers  = smart.getRequest().getParameter("developers");
 	String technology  = smart.getRequest().getParameter("technology");
 		String link  = smart.getRequest().getParameter("link");
 	String id = smart.getRequest().getParameter("id");
  // System.out.println("title="+title);
    IPTimeStamp ips = new IPTimeStamp();
    String ext = smart.getFiles().getFile(0).getFileExt();
    String fileName = ips.getIpTimeRand() +"."+ext;
	smart.getFiles().getFile(0).saveAs(this.getServletContext().getRealPath("/")+"project_image"+ java.io.File.separator +fileName);
	System.out.println(this.getServletContext().getRealPath("/")+"project_image"+ java.io.File.separator +fileName);
     
     
      final String url = "jdbc:mysql://localhost:3306/";
			String dbName = "dreamstation";
			String driverName = "com.mysql.jdbc.Driver";
			String userName = "sq_dreamers";
			String passWord = "3be2p9";
			Connection con = null;
			try {
				Class.forName(driverName).newInstance();

				con = DriverManager.getConnection(url + dbName, userName, passWord);

			} catch (Exception e1) {

				e1.printStackTrace();

			}
    
     
     
    
		int rs;
		String sql = "update project set title=?,developers=?,technology=?,link=?,picsite=? where id=?";
			try {
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, developers);
			pstmt.setString(3, technology);
			pstmt.setString(4, link);
			pstmt.setString(5, "../"+path+"/project_image/"+fileName);
			pstmt.setString(6, id);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     
     
     
     
     %>
   <%response.sendRedirect("../project_page_Action.action"); %>

   
  </body>
</html>
