<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.lanqiao.dao.QueryDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			String name=request.getParameter("uname");
			QueryDao dao=new QueryDao();
			String result=dao.login(name);
			out.print(result);
			
		%>
</body>
</html>