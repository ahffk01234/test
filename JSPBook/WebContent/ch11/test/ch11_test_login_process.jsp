<%@ page language="java" pageEncoding="UTF-8"%>
<!-- 
   1. 로그인 화면에서 넘겨받은 아이디/비밀번호를 이용하여 로그인 인증을 진행해주세요.
   > 본인이 결정한 아이디/비밀번호일때 로그인 처리해주세요.
   
   2. 로그인 인증
   > 로그인 성공 시, menu.jsp로 이동합니다.
   > 로그인 실패 시, login.jsp로 이동합니다.
 -->
 
<%

String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id.equals("mem")){
   
   if(pw.equals("pass")){
      
      response.sendRedirect("ch11_test_menu.jsp");
   }
   
}else{
   response.sendRedirect("ch11_test_login.jsp?error=1");
}



%>