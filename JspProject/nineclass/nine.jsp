<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>nineclass</title>
</head>
<body>
	<% 
	/*
	九大内置对象
	1.pageContext   jsp页面容器
	2.request 		请求对象
	3.response		响应对象
	4.session		会话对象
	5.appliation	全局对象
	
	String getContextPath()虚拟路径
	String getRealPath(String name)//其中name为相对路劲目录
	
	
	
	6.config		配置对象
	7.out			输出对象
	8.page			当前jsp页面对象(相当于java中的this)
	9.exception		异常对象
	*/
	/*
	四种范围对象:
		pageContext  	Jsp页面容器	(page对象(其他书中所指));//当前页面有效
		request			请求对象//同一次请求有效
						同一次请求有效;其他请求无效(请求转发后有效;重定向后无效)
		session			会话对象//同一次会话有效
						同一次会话有效（无论怎么跳转，都有效；关闭/切换浏览器后无效;从登陆->退出 之间全部有效）
		
		appliation		全局对象//全局有效(整个项目有效)
						全局变量:整个项目运行期间  都有效(切换浏览器 仍然有效);关闭服务.其他项目 无效
						
						若想实现多个项目共享.重启后仍然有效:JNDI
						
						1.以上4个范围对象,通过setAttribute()复制,通过getAttribute()去值
						2.以上范围对象,尽量使用最小范围.因为对象的范围越大,照成的性能损耗越大
						
		共同属性:
		Object	getAttribute(String name);根据属性名,或者属性值
		void setAttribute(String name ,Object obj);设置属性值(新增,修改);
		void removeAttribute(String name);
	*/
	
	%>
</body>
</html>