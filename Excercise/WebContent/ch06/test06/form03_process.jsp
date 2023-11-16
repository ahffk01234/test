<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// getParameterValues() 메소드를 활용하여 값을 출력
	String [] fruits = request.getParameterValues("fruits");

		for(int i=0; i<fruits.length; i++){
			out.println(fruits[i]+"");
		}
%>