<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>新闻管理</title>
    <link rel="stylesheet" type="text/css" href="css/back_manage.css">
    <link rel="shortcut icon" href="image/news_title_pic.png">
    <style type="text/css">
  body,html{
            width: 1004px;
		padding: 0px;
		margin: 0px auto; /*设置居中  */
		text-align: center; /*兼容性更好  */
        }
	
</style>
 	<script type="text/javascript">
 		
 		function del() {
 		if(confirm("你确定要删除这条新闻?"))
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
		<img alt="" src="image/manager_top.jpg"/>
		</div>
		<div class="left">
		<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div class="right">
		<h1 align="center">新闻管理</h1>
  
  <center>
  	<table align=center  cellspacing="0" border="1" style="border-color: #EFF2FF">
  	<colgroup>
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
</colgroup>
  		<tr>
  			<td height="30px" width="60px">编号</td>
  			<td width="340px">标题</td>  	        
  	        <td width="180px">作者</td>
  	        <td width="100px">发表日期</td>
  			<td width="60px">删除</td>
  			<td width="60px">更新</td> 
  			
  		</tr>
  		<s:iterator value="pageBean.list_news" id="us">
  		<tr>
  			<td><s:property value="#us.id"/></td>
  			<td><s:property value="#us.title"/></td> 			
  			<td><s:property value="#us.author"/></td>
  			<td><s:date name="#us.date" format="yy-MM-dd HH:mm"/></td>
  			<td><s:a href="deleteNews.action?news.id=%{#us.id}" onclick="return  del()"><input type="button" value="删除"></s:a></td>
  			<td><s:a href="updatePNews.action?news.id=%{#us.id}"><input type="button" value="更新"></s:a></td>
  		</tr>
  		</s:iterator>
  <tr>
  <td> <s:a href="managerPage/save_news.jsp"><input type="button" value="添加"></s:a> </td>
  <td COLSPAN=5>
  
  
      
     
     
        
        <s:if test="%{pageBean.currentPage == 1}">
            <input type="button" value="首页" disabled="disabled"> <input type="button" value="第一页" disabled="disabled">
        </s:if>
        <s:else>
            <a href="listBackNews.action?page=1"><input type="button" value="第一页"></a>
            <a href="listBackNews.action?page=<s:property value="%{pageBean.currentPage-1}"/>"><input type="button" value="上一页"></a>
        </s:else>
        
          共 <font color="red"><s:property value="pageBean.allRow"/></font> 条记录
         当前第<font color="red"><s:property value="pageBean.currentPage"/></font>/<font color="red"><s:property value="pageBean.totalPage"/></font>页
        <s:if test="%{pageBean.currentPage != pageBean.totalPage}">
            <a href="listBackNews.action?page=<s:property value="%{pageBean.currentPage+1}"/>"><input type="button" value="下一页"></a>
            <a href="listBackNews.action?page=<s:property value="pageBean.totalPage"/>"><input type="button" value="最后一页"></a>
        </s:if>
        <s:else>
            <input type="button" value="下一页" disabled="disabled"> <input type="button" value="最后一页" disabled="disabled">
        </s:else>
 </td></tr>
			</table>
  	</center>
		</div></div>
    
 	
  </body>
</html>
