<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			request.setCharacterEncoding("utf-8");
			String name=request.getParameter("uname");
			String pwd=request.getParameter("upwd");

			//将用户名加入到Cookie中
			Cookie cookie=new Cookie("uname",name);
			
			response.addCookie(cookie);
			
			response.sendRedirect("client.jsp");
		%>
</body>
</html>