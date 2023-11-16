<%@page import="java.util.Enumeration"%>
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
	Enumeration paramNames = request.getParameterNames();
%>
<%
	while(paramNames.hasMoreElements()){
		String name = (String)paramNames.nextElement();
		String value = request.getParameter(name);
		out.print("name :" + name + "value" + value);
	}
%>
</body>

</html>