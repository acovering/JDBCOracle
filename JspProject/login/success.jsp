<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登陆成功</title>
</head>
<body>
	登陆成功
	<% 
	out.println(request.getParameter("uname"));
	%>
</body>
</html>