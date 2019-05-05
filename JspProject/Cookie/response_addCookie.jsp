<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>addCookie</title>
</head>
<body>
	<%
		//Cookie可不是tomcat的内置对象哟,它需要new
		Cookie cookie =new Cookie("123","张三");
		Cookie cookie2=new Cookie("321","李四");
		Cookie cookie3=new Cookie("231","隔壁老王");
		//name好像是不能使用中文汉字
		response.addCookie(cookie);
		response.addCookie(cookie2);
		response.addCookie(cookie3);
		
		//页面跳转到客户端(转发、重定向)
		response.sendRedirect("result.jsp");//重定向
	%>
</body>
</html>