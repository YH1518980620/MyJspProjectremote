<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		hello index1 你好
</body>
	<%!
		public String bookName;
		public void init(){
			bookName="java";
		}
	
	%>
	<%
		out.print("<br>"+"516大冒险");/*shabiba*/
		init();
	%>
	<%="<br/>"+bookName %>
	<!-- 你是不是傻 -->
	<%-- 还在学习中--%>
</html>