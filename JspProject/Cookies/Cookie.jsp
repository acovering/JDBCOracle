<%@	page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content_Type" content="text/html;charset=utf-8 ">
		<title>
			Cookie实用
		</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String name =request.getParameter("uname");
			String pwd =request.getParameter("upwd");
			//将用户名加入到Cookie
			//建议Cookie只保存英文与数字,不然要进行解码操作
			Cookie cookie =new Cookie("name",name);
			cookie.setMaxAge(15);//设置最大有效期为多少秒
			
			response.addCookie(cookie);
			response.sendRedirect("result.jsp");
			
		%>
	</body>
	
</html>