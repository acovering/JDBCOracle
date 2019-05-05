<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@	page import="java.sql.*" %>

<!--导入包的操作 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登入中心</title>
</head>
<body>
	<%!
	String URL="jdbc:oracle:thin:@localhost:1521:ORCL";
	String USERNAME ="system";//system为我的本地oracle用户名
	String PWD="root";
	Connection connection=null;
	PreparedStatement preparedstatement=null;
	Boolean update(String UserName,String PassWord){
		int panduannum=0;
		try{
			Class.forName("oracle.jdbc.OracleDriver");
		}catch(Exception e){
			e.printStackTrace();
		}
		try{
		connection=DriverManager.getConnection(URL,USERNAME,PWD);
		String sql=("select * from demouser where username=? and password =?");
		preparedstatement=connection.prepareStatement(sql);
		preparedstatement.setString(1,UserName);
		preparedstatement.setString(2,PassWord);
		
		ResultSet resultset=preparedstatement.executeQuery();

		if(resultset.next()){
			if(resultset.getString("username").equals(UserName)&&resultset.getString("password").equals(PassWord)){
				if(preparedstatement!=null) {
					preparedstatement.close();
				}
				if(connection!=null) {
					connection.close();
				}
				panduannum=1;//大小写字符匹配成功
			}
			else{
				if(preparedstatement!=null) {
					preparedstatement.close();
				}
				if(connection!=null) {
					connection.close();
				}
				panduannum=0;//大小写字符匹配不成功
			}
		}
		}
		catch(Exception ex){
			ex.printStackTrace();
			panduannum=0;//跑错未执行...
		}
		if(panduannum==1){
			return true;
			
		}
		else{
			return false;
		}
		}
	%>
	<%
	request.setCharacterEncoding("utf-8");
	String name =request.getParameter("uname");
	String password =request.getParameter("upassword");
	if(update(name,password)){
		out.println("欢迎"+name+"登录成功!<br/>");
	}else{
		out.println("登录错误,请检查你输入的用户名与密码!");
	}
	
	%>
</body>
</html>