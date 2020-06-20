<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.lanqiao.dao.LoginDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			String name=request.getParameter("uname");
			String pwd=request.getParameter("upwd");
			LoginDao dao=new LoginDao();
			int result=dao.login(name, pwd);
			if(result>0){
				out.print("登录成功");
			}
			else if(result==0){
				out.print("账号或密码错误");
			}
			else{
				out.print("登录异常");
			}
		%>
</body>
</html>