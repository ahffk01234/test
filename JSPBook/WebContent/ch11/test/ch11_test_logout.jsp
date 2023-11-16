<%@ page language="java" pageEncoding="UTF-8"%>
<%
	session.invalidate();
	response.sendRedirect("ch11_test_login.jsp");
%>