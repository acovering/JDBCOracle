<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@	page import="java.sql.*" %>

<!--导入包的操作 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登入</title>
</head>
<body>
	<form action="Classlogin.jsp" method="post">
		用户名:<input type="text" name="uname" /><br/>
		密     码:<input type="password" name="upassword" /><br/>
		<input type="submit" value=" 登入" />
	</form>
</body>
</html>