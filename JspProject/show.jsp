<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户注册中心</title>
</head>
<body>
	<%
		//设置编码格式
		request.setCharacterEncoding("utf-8");
		String name =request.getParameter("uname");
		String password =request.getParameter("upassword");
		String age =request.getParameter("uage");
		
		//兴趣爱好
		String [] hobbies =request.getParameterValues("hobbies");
		
	%>
	注册成功,信息如下:<br/>
	姓名:<%=name %><br/>
	年龄:<%=age %><br/>
	密码:不可见!<br/>
	爱好:
	<%
		if(hobbies!=null)
		{
			for(String hobby:hobbies)
			{
				out.println(hobby+"&nbsp;");
			}
		}
	%>

</body>
</html>