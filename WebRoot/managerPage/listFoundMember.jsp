<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>成员管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="image/news_title_pic.png">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/back_manage.css">
	<style type="text/css">
  body,html{
             width: 1004px;
		padding: 0px;
		margin: 0px auto; /*设置居中  */
		text-align: center; /*兼容性更好  */
        }
.introduction{
	overflow:hidden;
    text-overflow:ellipsis;  /*截断文字，显示省略号(...)*/
    -o-text-overflow:ellipsis;  /*Opera的专用截断文字的属性*/
	white-space:nowrap !important;  /*强制文字不换行(标准浏览器)*/
	width:95px; 
	height:14px;
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
		<center><h1>查找结果</h1>
		<h3><a href="find_black_first_four.action"><input type="button" value="再次查找成员"/></a></h3>
		</center>
    <table cellspacing="0" align=center border="1" style="border-color: #EFF2FF">
		<colgroup>
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
		<col class="even" />
		<col class="odd" />
</colgroup>
		  <tr>
                              <td height="30px"class="head1" width="60px">编号</td>
                   			   <td class="head2" width="60px">名字</td>
                               <td class="head1" width="95px">介绍</td>
                               <td class="head2" width="65px">年纪专业</td>
                               <td class="head2" width="65px">部门</td>
                               <td class="head2" width="168px">小图片</td>
                               <td class="head2" width="167px">大图片</td>
                               <td class="head1" width="60px">删除</td>
                               <td class="head2" width="60px">更新</td>
                              </tr>
 	 <s:iterator value="listMember" id="member" status="status">
                                 <tr>
                                 <td><s:property value="#member.id"/></td>
                                 <td><s:property value="#member.name"/></td>
                           		<td><div class="introduction"><s:property value="#member.introduction"/></div>
                           		
                           		<td><s:property value="#member.grade_major"/></td>
                           		<td><s:property value="#member.category"/></td>
                           		<td><s:property value="#member.image_small"/></td>
                           		<td><s:property value="#member.image_big"/>  		
                           		</td>
                           		
                    <td>
                             
                           <input type="button" value="删除" name="删除" onclick="window.location='RemoveMember.action?member.id=<s:property value="#member.id"/>';return del()"></input>
                               </td>
                                 <td>
                                    <input type="button" value="更新" name="更新" onclick="window.location='list_member_to_update.action?member.id=<s:property value="#member.id"/>'"></input>

                               </td>
                            
                              </tr>
                         </s:iterator>
 
		
				   <tr></tr>
                         
		</table>
		</div>
		</div>
  </body>
</html>
