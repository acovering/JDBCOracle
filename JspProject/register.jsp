<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册中心</title>
</head>
<body>
	<form action="show.jsp" method="post">
		<!-- 
		表单提交注册信息,
		 -->
		用户名:<input  type="text" name="uname"/><br/>
		密码:<input type="text" name="upassword" /><br/>
		年龄:<input type ="text" name="uage" ><br/>
		爱好:<br/>
		<input type="checkbox" name="hobbies" value="乒乓球">乒乓球<br/>
		<input type="checkbox" name="hobbies" value="篮球">篮球<br/>
		<input type="checkbox" name="hobbies" value="足球">足球<br/>
		<input type="submit"  value="确认注册">
	</form>
</body>
</html>