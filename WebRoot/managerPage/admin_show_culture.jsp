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
    
    <title>团队文化管理</title>
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
function del()
{
var gnl=confirm("你真的确定要删除吗?"); 
if (gnl==true){ 
return true; 
} 
else{ 
return false; 
} 
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
		<center><h1>团队文化管理</h1></center>
		
		
		<table  align=center  cellspacing="0" border="1" style="border-color: #EFF2FF">
		<colgroup>
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
</colgroup>
		  <tr>
                              
                              
                            <td height="30px"class="head1" width="50px">编号</td>
                   			<td class="head2" width="400px">标题</td>
                   			<td width="150px">更新时间</td>
                            <td class="head1" width="100px">删除</td>
                            <td class="head2" width="100px">更新</td>
              </tr>
 	 <s:iterator value="#request.list" id="culture" status="status">
                                 <tr>
                                 <td><s:property value="#culture.id"/></td>
                           		<td><s:property value="#culture.title"/></td>
                   				<td><s:date name="#culture.time" format="yy-MM-dd HH:mm"/></td>
                             <td>
                           
                              <input type="button" value="删除" name="删除" onclick="window.location='delete_culture.action?culture.id=${culture.id}';return del()"></input>
                               </td>
                                 <td>
                                
                            <input type="button" value="更新" name="更新" onclick="window.location='list_to_update.action?culture.id=${culture.id}'"></input>
                               </td>
                              </tr>
                         </s:iterator>
                         <tr>
                         <td>
                          <input type="button" value="添加" name="添加" onclick="window.location='managerPage/admin_add_culture.jsp'"></input>
                         </td>
                         <td>
                         
                         </td><td>
                         
                         </td><td>
                          </td><td>
                         </td>
                         </tr>
                         
		</table>
            </div>
		
		
		
		
		</div>


  </body>
</html>
