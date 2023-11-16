<%@page import="ch11.vo.BoardVO"%>
<%@page import="ch11.dao.BoardRepository"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!-- 
	삭제할 게시글 정보를 넘겨받고, 삭제를 진행해주세요.
	삭제가 실패하여 에러가 발생 할 경우, exceptionBoard_error.jsp 페이지로 이동할 수 있게 해주세요.
	
	삭제 완료 후, 게시판 목록 페이지(boardList.jsp)로 이동해주세요.
 -->
 <!-- 
	1. 게시글 삭제를 처리해주세요.
		> 삭제 성공 후, 상세보기 페이지(boardList.jsp)로 이동해주세요.
		> 삭제 실패 후, 에러 페이지(exceptionBoard_error.jsp)로 이동해주세요.
 -->

 <%
 request.setCharacterEncoding("UTF-8");

 BoardRepository dao = BoardRepository.getInstance();
 
 String no = request.getParameter("no");
 
 dao.deleteBoard(Integer.parseInt(no));
 
 response.sendRedirect("ch11_test_boardList.jsp");
 %>