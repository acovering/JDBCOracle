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
		<%!
			//全局变量声明
			String uname="";//查找保存下来的Cookie中的密码,起保存账号密码的作用
		%>
		<%
			Boolean flag=false;
			Cookie [] cookies=request.getCookies();
			for(Cookie cookie:cookies){
				if(cookie.getName().equals("name")){
					uname=cookie.getValue();
					flag=true;
			}

			}
			if(flag==false)//就是这样的,不像是视频教程中的true
			{
				out.println("Cookie已失效!");
			}
			else
			{
				out.println(uname);
			}
		%>
		<form action="Cookie.jsp" method="post">
			username:<input type="text" name="uname" value=<%=uname %>><br/>
			password:<input	type="password" name="upwd" /><br/>
			<input type="submit" value="登陆"	/><br/>
		</form>
	
	</body>
	
</html>