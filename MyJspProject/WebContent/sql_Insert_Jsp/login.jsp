<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		数据库用户登陆：<br>
		<form action="check.jsp" method="post">
				用户名:<input type="text" name="uname"><br>
				密码:<input type="password" name="upwd"><br>
				<input type="submit" value="登陆"><br>
		</form>
		
		数据库用户查询:<br>
		<form action="query_sql.jsp" method="post">
				用户名:<input type="text" name="uname"><br>
				<input type="submit" value="查询"><br>
		</form>
		
		数据库用户插入:<br>
		<form action="insert_sql.jsp" method="post">
				用户名:<input type="text" name="uname"><br>
				密码:<input type="password" name="upwd"><br>
				<input type="submit" value="插入"><br>
		</form>
		
		数据库用户删除:<br>
		<form action="delete.jsp" method="post">
				用户名:<input type="text" name="uname"><br>
				密码:<input type="password" name="upwd"><br>
				<input type="submit" value="插入"><br>
		</form>
</body>
</html>