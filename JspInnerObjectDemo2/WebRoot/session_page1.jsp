<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'session_page1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>session内置对象</h1>
    <hr>
    <!--方法一，没有时间格式
    Session创建时间：<%=session.getCreationTime() %><br>
    -->
    <!--方法二，有时间格式-->
    <%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss"); 
    Date d = new Date(session.getCreationTime());
    session.setAttribute("username", "admin");
    session.setAttribute("password", "123456");
    session.setAttribute("age", 20);
    
    //设置当前session最大生成期限单位是秒
    //session.setMaxInactiveInterval(10);//10秒    
    %>
    Session创建时间：<%=sdf.format(d) %><br>
    Session的ID编号：<%=session.getId() %><br>
          从Session中获取用户名：<%=session.getAttribute("username") %><br>
    从Session中获取密码：<%=session.getAttribute("password") %><br>
    从Session中获取年龄：<%=session.getAttribute("age") %><br>
    Session中保存的属性有：<%
    	String[] names = session.getValueNames();
    	for(int i=0;i<names.length;i++)
    	{
    		out.println(names[i]+"&nbsp;&nbsp;");
    	}
     %><br>
  </body>
</html>
