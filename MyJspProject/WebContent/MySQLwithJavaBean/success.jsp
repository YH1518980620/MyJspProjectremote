<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		欢迎你的到来！<br>
		登陆成功！<br>
		这是重定向不能获得name：zs<br>
		<%
			String name=request.getParameter("uname");
			out.print(name);
		%>
</body>
</html>