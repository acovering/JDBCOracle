<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>SessionDemo</title>
</head>
<body>
	<% 
	String name=(String)session.getAttribute("uname");
	if(name==null)
	{
		response.sendRedirect("login.jsp");	
	}else{
		out.println("欢迎您"+name);
	}
	%>

</body>
</html>