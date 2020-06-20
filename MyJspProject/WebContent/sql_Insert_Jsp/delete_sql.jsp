<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.lanqiao.dao.DeleteDao" %>
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
			DeleteDao dao=new DeleteDao();
			int result=dao.login(name, pwd);
			if(result>0){
				out.print("删除数据成功");
			}
			else if(result==0){
				out.print("删除数据失败");
			}
			else{
				out.print("删除数据异常");
			}
		%>
</body>
</html>