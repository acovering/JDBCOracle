<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>session基础</title>
</head>
<body>
	<%
	/*
	session:会话
	a.浏览网站:开始---关闭
	b.购物:浏览、付款、退出
	c.电子邮件:浏览、写邮件、退出   开始---结束
	机制与原理:
		
		
		客户端					服务端
	
		IE(张三)					tom猫
		
		chrome(李四)				tom猫
		
		firefox(王五)			tom猫
		
		
		为了使得tom猫能够区分不同客户端(用户)请求,
		服务端会在客户端第一次连接时为各个客户端
		new 一个session对象(用于保存该客户的信息),session对像会产生一个sessionID
		sessionID会原样cope一份,,,转化为JSESSIONID(Cookie),
		客户端通过获取Cookies,,从而得到JSESSIONID.....
		
		客户端第二次/n次请求服务器时:服务端会先用客户端cookie中的JSESSIONID 去服务端的session中匹配sessionID,如果匹配成功
		(cookie jsessionid和session sessionid),说明此用户不是第一次访问;
		
		session方法:
			String getId();//获取sessionId
			boolean isNew();//判断是否是新用户(第一次访问)
			void invalidate();//使session失效
			
			void setAttribute();
			Object getAttribute();
		
			void setMaxInactiveInterval(秒);设置最大有效 非活动时间
			int getMaxInactiveInterval();获取最大有效 非活动时间
			
			cookie				session
保存的位置	服务端				客户端
安全性		较安全				较不安全
保存的内容	Object				String

			
			
	*/
	
	
	%>
</body>
</html>