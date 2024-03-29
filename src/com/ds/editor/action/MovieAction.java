package com.ds.editor.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MovieAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public MovieAction() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		StringBuffer readOneLineBuff = new StringBuffer();   
		String content ="";   
		String searchkey = request.getParameter("searchKey");
		String videotype = request.getParameter("videoType");
		try {
		searchkey = URLEncoder.encode(searchkey,"utf-8");
		    URL url = new URL("http://api.tudou.com/v3/gw?method=item.search&appKey=myKey&format=json&kw="+ searchkey+"&pageNo=1&pageSize=20&channelId="+videotype+"&inDays=7&media=v&sort=s");
		    URLConnection conn = url.openConnection();
		    BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(),"utf-8"));
		    String line = "";   
		    while ((line = reader.readLine()) != null) {   
		        readOneLineBuff.append(line);   
		    }   
		     content = readOneLineBuff.toString();   
		    reader.close();   
		} catch (MalformedURLException e) {   
		    e.printStackTrace();   
		} catch (IOException e2) {   
		    e2.printStackTrace();   
		}      
		response.getWriter().print(content); 
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
