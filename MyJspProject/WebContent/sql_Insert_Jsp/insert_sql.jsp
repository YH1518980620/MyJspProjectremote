<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.lanqiao.dao.InsertDao" %>
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
			InsertDao dao=new InsertDao();
			int result=dao.login(name, pwd);
			if(result>0){
				out.print("插入数据成功");
				System.out.print("插入数据成功");
			}
			else if(result==0){
				out.print("插入数据失败");
				System.out.print("插入数据失败");
			}
			else{
				out.print("插入数据异常");
				System.out.print("插入数据异常");
			}
		%>
</body>
</html>