<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>look</title>
</head>
<body>
	<%
		Cookie[] cookies=request.getCookies();
		for(Cookie cookie:cookies)
		{
			out.println(cookie.getName()+"---"+cookie.getValue());
			
		}
		
	%>
</body>
</html>