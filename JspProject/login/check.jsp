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
	if(name!=null&&password!=null){
		if(name.equals("2857561008")&&password.equals("2857561008"))
		{
		//	response.sendRedirect("success.jsp");//重定向
			request.getRequestDispatcher("success.jsp").forward(request,response);
		//上面为转发的基本套路,除了'success.jsp'以外
		}
		else
		{
			out.println("登陆失败,<a href='login.jsp'>点击跳转</a>");	
		}
	}else{
		out.println("登陆失败,<a href='login.jsp'>点击跳转</a>");	
	}
	
	
	%>
</body>
</html>