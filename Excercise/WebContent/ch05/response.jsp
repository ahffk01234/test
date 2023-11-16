<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
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
		response.setIntHeader("Refresh", 5);
		
		Date dt = new Date();
		out.println(dt);
	%>
	
	<a href="response_data.jsp">구글로 이동하기</a>
</body>
</html>