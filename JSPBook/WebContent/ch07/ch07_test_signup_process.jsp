<%@page import="ch07.dao.MemberDAO"%>
<%@page import="ch07.vo.MemberVO"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!-- 
	1. 회원가입 폼에서 넘겨받은 일반 데이터, 파일데이터를 전달받아서
	일반 데이터와 파일명을 저장하여 회원 객체 하나를 생성 후,
	회원 목록에 해당하는 리스트에 저장하여 목록 페이지에서 리스트 데이터를 활용할 수 있도록 해주세요.
		> 회원 등록을 진행해주세요. (회원가입 프로세스)
	
	2. 회원가입이 완료되면, ch07_test_signin.jsp로 이동하여 로그인을 진행할 수 있도록 해주세요.
 -->

<%
	String id = request.getParameter("Mem_id");
	String pw = request.getParameter("Mem_pw");
	String name = request.getParameter("Mem_name");
	String gender = request.getParameter("Mem_sex");
	String profile = request.getParameter("filename");
	
	MemberDAO memberDao = MemberDAO.getInstance();
	
	response.sendRedirect("ch07_test_signin.jsp");
%>










