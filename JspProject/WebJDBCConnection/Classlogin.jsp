<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@	page import="acovering.connection.*" %>

<!--导入包的操作 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登入中心</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String name =request.getParameter("uname");
	String password =request.getParameter("upassword");
	JavaBean javabean=new JavaBean();
	if(javabean.isTrue(name, password)){
		out.println("欢迎登录成功");
	}else{
		out.println("登录失败!");
	}
	javabean.closeConnection();
	%>
</body>
</html>