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
    
    <title>首页管理</title>
	<link rel="stylesheet" type="text/css" href="css/back_manage.css">
	<link rel="shortcut icon" href="image/news_title_pic.png">
<style type="text/css">
  body,html{
            width: 1004px;
			padding: 0px;
			margin: 0px auto; /*设置居中  */
			text-align: center; /*兼容性更好  */
        }

.pic_description
{
    overflow:hidden;
    text-overflow:ellipsis;  /*截断文字，显示省略号(...)*/
    -o-text-overflow:ellipsis;  /*Opera的专用截断文字的属性*/
	white-space:nowrap !important;  /*强制文字不换行(标准浏览器)*/
	width:180px; 
	height:14px;
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
		<center><h1>首页管理</h1></center>
		
		
		<table  align=center  cellspacing="0" border="1" style="border-color: #EFF2FF">
		<colgroup>
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		
</colgroup>
		  <tr>
                              
                              
                              <td width="60px" height="30px"class="head1">编号</td>
                   				<td width="120px" class="head2">图片名字</td>
                   				<td width="180px" class="head2">图片描述</td>
                   				<td width="320px" class="head2">图片地址</td>
                              <td width="60px" class="head1">删除</td>
                               <td width="60px" class="head2">更新</td>
                              </tr>
 	 <s:iterator value="#request.list_index" id="list_index" status="status">
                                 <tr>
                                 <td><s:property value="#list_index.id"/></td>
                           		<td><s:property value="#list_index.pic_name"/></td>
                           		<td><div class="pic_description"><s:property value="#list_index.pic_description"/></div></td>
                           		<td><s:property value="#list_index.pic_address"/></td>
                   				
                             <td>
                           
                              <input type="button" value="删除" name="删除" onclick="window.location='admin_delete_pic.action?index.id=<s:property value="#list_index.id"/>';return del()"></input>
                               </td>
                                 <td>
                                
                            <input type="button" value="更新" name="更新" onclick="window.location='find_indexinfo_by_id.action?index.id=<s:property value="#list_index.id"/>'"></input>
                               </td>
                              </tr>
                         </s:iterator>
                         <tr>
                         <td>
                          <input type="button" value="添加" name="添加" onclick="window.location='managerPage/add_pic_Index.jsp'"></input>
                         </td>
                         <td>
                         
                         </td><td>
                         
                         </td><td>
                          <td width="50px" class="head1"></td>
                               <td width="50px" class="head2"></td>
                         
                         </tr>
                         
		</table>
            </div>
		
		
		
		
		</div>


  </body>
</html>
