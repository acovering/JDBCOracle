<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登陆界面</title>
</head>
<body>
	<form action="check.jsp" method="post">
		账号<input type="text" name="uname" /><br/>
		密码<input type="password" name="upwd"/><br/>
		<input type="submit" value="提交" />
		
	</form>
	<!-- 
	1.
	response:响应对象
	提供的方法:
	void addCookie(Cookie cookie);服务端向客户端增加对象
	void sendRedirect(String location)throws IOExcepton;重定向,页面跳转的一种方式,就是叫原网页去找另外的一个网页
	void setContetType(String type);设置服务端响应的编码(utf-8,等等)
	示例:
	login.jsp(登陆)->check.jsp(校验)->success(成功)
	                                             请求装发                                    重定向
	地址栏是否改变  		      不变 					     改变
	是否保留第一次
	请求时的数据				保留					  不保留  --4种范围对像
	请求的次数				1						2
	
	转发、重定向:
	转发:
		张三(客户端) ->[ 服务窗口A(服务端)->服务窗口B]
	重定向:
		张三(客户端)->服务窗口A(服务端)->去找B
		张三(客户端)->服务窗口B(服务端)
		
		
		Cookie:  name=value//形式
		javax.servlet.http.Cookie
		public Cookie(String name,String value)
		String getName():获取name
		String getValue():获取value
		void setMaxAge(int expiry);
		void setMaxAge(int expiry);最大有效期
		服务端准备Cookie:
			response.addCookie(Cookie cookie)
		页面跳转(转发,重定向)
		客户端获取cookie:requset.getCookies();//返回Cookie对像的数组
		
		1.服务端获取Cookie:response对象;客户端获取对象:request对像
		2.不能直接获取某一个单独对象,只能一次性将全部的cookie拿到
		3.获取Cookie对像时候,除了自己设置的Cookie对象外,还有一个name为JSESSIONID的cookie
		
		
		
		
	 -->
	 
	 
	<%
	//本页面为login页面,提供账号密码输入框,与提交按钮;
	
	
	
	%>
</body>
</html>