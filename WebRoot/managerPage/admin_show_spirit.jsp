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
    <link rel="shortcut icon" href="image/news_title_pic.png">
    <title>团队精神管理</title>
	<link rel="stylesheet" type="text/css" href="css/back_manage.css">
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
if(confirm("确定要删除吗？"))
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
		<center><h1>团队精神管理</h1></center>
		
		
		<table cellspacing="0" align=center border="1" style="border-color: #EFF2FF">
		<colgroup>
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
</colgroup>
		  <tr>
                            <td height="30px"class="head1" width="60px">编号</td>
                   			<td class="head2" width="390px">标题</td>
                   			<td width="150px">更新时间</td>
                            <td class="head1" width="100px">删除</td>
                            <td class="head2" width="100px">更新</td>
             </tr>
 	 <s:iterator value="#request.list" id="spirit" status="status">
                                 <tr>
                                 <td><s:property value="#spirit.id"/></td>
                           		<td><s:property value="#spirit.title"/></td>
                           		<td><s:date name="#spirit.time" format="yy-MM-dd HH:mm"/></td>
                    <td>
                             
                                <input type="button" value="删除" name="删除" onclick="window.location='delete_spirit.action?spirit.id=<s:property value="#spirit.id"/>';return del()"></input>
                               </td>
                                 <td>
                                    <input type="button" value="更新" name="更新" onclick="window.location='list_spirit_to_update.action?spirit.id=<s:property value="#spirit.id"/>'"></input>

                               </td>
                            
                              </tr>
                         </s:iterator>
                       <tr>
                         <td>
                          <input type="button" value="添加" name="添加" onclick="window.location='managerPage/admin_add_spirit.jsp'"></input>
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
