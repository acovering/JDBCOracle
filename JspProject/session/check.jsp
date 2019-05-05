<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>check</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String name =request.getParameter("uname");
	String password =request.getParameter("upwd");
	if(name.equals("2857561008")&&password.equals("2857561008"))
	{
		//只有登陆成功,session中才会存在uname/upwd
		session.setAttribute("uname",name);
		session.setAttribute("upwd",password);
		session.setMaxInactiveInterval(10);
		//转发到欢迎页面
		//request.getRequestDispatcher("demo.jsp").forward(request, response);
		response.sendRedirect("demo.jsp");
	}
	else
	{
		//跳转到登陆页面
		response.sendRedirect("login.jsp");
	}
	
	%>
</body>
</html>