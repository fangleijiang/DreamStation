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

      String pic_name  = smart.getRequest().getParameter("pic_name");
 	String pic_description  = smart.getRequest().getParameter("pic_description");
  // System.out.println("title="+title);
    IPTimeStamp ips = new IPTimeStamp();
    String ext = smart.getFiles().getFile(0).getFileExt();
    String fileName = ips.getIpTimeRand() +"."+ext;
	smart.getFiles().getFile(0).saveAs(this.getServletContext().getRealPath("/")+"Index_pic"+ java.io.File.separator +fileName);
	System.out.println(this.getServletContext().getRealPath("/")+"Index_pic"+ java.io.File.separator +fileName);
     
     
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
		String sql = "insert into index_info values(null,?,?,?)";
			try {
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pic_name);
			pstmt.setString(2, pic_description);
			pstmt.setString(3, "../"+path+"/Index_pic/"+fileName);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     
     
     
     
     %>
   <%response.sendRedirect("admin_list_all_index_info.action"); %>

   
  </body>
</html>
