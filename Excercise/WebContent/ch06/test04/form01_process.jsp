<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1) request 내장 객체의 getParameter 메소드를 이용하여 요청 파라미터 값을 받는다
		request.setCharacterEncoding("UTF-8");
		StringBuffer name = new StringBuffer(request.getParameter("name"));
		StringBuffer addr = new StringBuffer(request.getParameter("addr"));
		StringBuffer email = new StringBuffer(request.getParameter("email"));
	// 2) Stringbuffer 또는 out.println()을 이용하여 출력한다.
	
		
%>
	아이디 : <% out.println(name); %>
	주소 : <% out.println(addr); %>
	이메일 : <% out.println(email);%>