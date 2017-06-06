<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="utf-8"%>
<%
	response.setContentType("text/html;charset=utf-8");//设置响应的MIMI类型
	
	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	//out.flush();//强制清空缓存区，并且把缓冲区内容写到浏览器上,可测试有无这句话的效果。
	
	PrintWriter outer = response.getWriter();//获得输出流对象
	outer.println("response对象生成的输出流outer对象");
	response.sendRedirect("reg.jsp");//请求重定向,测试本句话需要为out.flush();加注释否则会抛出异常。

%>