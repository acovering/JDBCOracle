<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public String bookName;//全局变量
		public void init()//定义方法
		{
			bookName="java书";//对全局变量进行赋值
		}
	%>
	<%--
	jsp代码注释
	 --%>
	<%
		String name ="zhangsan";//局部变量
		out.println("hello..."+name);//java语句
		init();
	%>
	<%="书名为"+bookName/*输出表达式*/ %>
	<% 
	out.println("<br/>");
	String ContextPathName=application.getContextPath();
	out.println(ContextPathName+"<br/>");
	out.println(application.getRealPath("/")+"<br/>");
	
	%>
</body>
</html>