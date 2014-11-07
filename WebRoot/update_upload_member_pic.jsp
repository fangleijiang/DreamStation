<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8" %>
<%@ page import="IPTimeStamp.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 request.setCharacterEncoding("UTF-8"); 

%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>上传成功</title>
  </head>
  <body>
    <% 
    
    SmartUpload smart = new SmartUpload();
    smart.initialize(pageContext);
    smart.upload();
    String id = smart.getRequest().getParameter("id");
    String name  = smart.getRequest().getParameter("name");
 	String introduction  = smart.getRequest().getParameter("introduction");
    String grade_major  = smart.getRequest().getParameter("grade_major");
    String category  = smart.getRequest().getParameter("category");
 
    IPTimeStamp ips = new IPTimeStamp();
  
    String ext = smart.getFiles().getFile(0).getFileExt();
    String fileName = ips.getIpTimeRand() +"."+ext;
	smart.getFiles().getFile(0).saveAs(this.getServletContext().getRealPath("/")+"member_pic"+ java.io.File.separator +fileName);
	String ext1 = smart.getFiles().getFile(1).getFileExt();
    String fileName1 = ips.getIpTimeRand() +"."+ext1;
	smart.getFiles().getFile(1).saveAs(this.getServletContext().getRealPath("/")+"member_pic"+ java.io.File.separator +fileName1);
	//System.out.println(this.getServletContext().getRealPath("/")+"upload"+ java.io.File.separator +fileName);
     
     
      final String url = "jdbc:mysql://localhost:3306/";
			String dbName = "dreamstation";
			String driverName = "com.mysql.jdbc.Driver";
			String userName = "root";
			String passWord = "123456";
			Connection con = null;
			try {
				Class.forName(driverName).newInstance();

				con = DriverManager.getConnection(url + dbName, userName, passWord);

			} catch (Exception e1) {

				e1.printStackTrace();

			}
    
     
     
    
		int rs;
		String sql = "update member set name = ?,introduction=?,image_small=?,category=?,image_big=?,grade_major=? where id = ?";
			try {
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, introduction);
			pstmt.setString(3, "../"+path+"/member_pic/"+fileName);
			pstmt.setString(4, category);
			pstmt.setString(5, "../"+path+"/member_pic/"+fileName1);
			pstmt.setString(6, grade_major);
			pstmt.setString(7, id);
			rs = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     
     
     
     
     %>
   <%response.sendRedirect("find_black_first_four.action"); %>

   
  </body>
</html>
