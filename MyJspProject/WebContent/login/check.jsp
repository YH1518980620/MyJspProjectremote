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
			if(name.equals("zs")&&pwd.equals("123456")){
				//重定向
				response.sendRedirect("success.jsp");
				//导致数据丢失
				//页面跳转，请求转发,可以获得数据，并且地址栏没有改变（仍然保留 转发时的地址）
				//request.getRequestDispatcher("success.jsp").forward(request, response);
			}
			else{
				out.print("登陆失败！账号或密码错误");
			}
		%>
</body>
</html>