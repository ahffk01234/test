<%@page import="java.util.List"%>
<%@page import="ch11.vo.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ch11.dao.BoardRepository"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>쉽게 배우는 JSP 웹 프로그래밍</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/feather/feather.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/vertical-layout-light/style.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/favicon.png" />
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<body>
	<div class="container-scroller">
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo mr-5" href="${pageContext.request.contextPath }/index.jsp">
					<img src="${pageContext.request.contextPath }/resources/images/logo.svg" class="mr-2" alt="logo" />
				</a>
			</div>
			<div class="navbar-menu-wrapper d-flex align-items-center justify-content-end"></div>
		</nav>
		<div class="container-fluid page-body-wrapper">
			<div class="container-fluid">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-md-12 grid-margin">
							<div class="row">
								<div class="col-12 col-xl-8 mb-4 mb-xl-0">
									<h3 class="font-weight-bold">쉽게 배우는 JSP 웹 프로그래밍</h3>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-2 stretch-card grid-margin">
							<div class="card data-icon-card-primary">
								<div class="card-body">
									<p class="card-title text-white">11장 예외처리</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">TEST</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">ch11_test_boardList.jsp</p>
									
									<!-- 
										1. 게시판 목록을 출력해주세요.
											> JSTL을 활용해주세요.
											> 초기 화면에서는 데이터가 없으므로 '조회하실 게시글이 존재하지 않습니다.'를 출력해주세요.
											> 데이터가 있는 경우엔 제목, 작성자, 작성일, 조회수를 맞춰서 데이터를 출력해주세요.
													
											** 초반 데이터는 없습니다.
														제목						작성자		작성일			조회수
										─────────────────────────────────────────────────────────────────────────────
															조회하실 게시글이 존재하지 않습니다.
										─────────────────────────────────────────────────────────────────────────────						
										[ 게시글 등록하기  ]
										
											** 데이터가 있는 경우 아래와 같이 출력됩니다.
													제목						작성자		작성일			조회수
										─────────────────────────────────────────────────────────────────────────────
											게시판 제목입니다......! 1			허나훔		2022-12-12		1245
											게시판 제목입니다......! 2			송서영		2022-12-12		1245
											게시판 제목입니다......! 3			채진영		2022-12-12		1245
											게시판 제목입니다......! 4			배영호		2022-12-12		1245
											게시판 제목입니다......! 5			조은혁		2022-12-12		1245
											게시판 제목입니다......! 6			조현수		2022-12-12		1245
											.....
										─────────────────────────────────────────────────────────────────────────────
										 [ 게시글 등록하기  ]
										
										2. 시큐리티 적용
											> 게시판 등록 페이지를 시큐리티 보호자원으로 설정해주세요.
												- 시큐리티 인증방식 : FORM
												- 시큐리티 로그인 
											> 등록 페이지는 역할명 admin만 접근 가능토록 해주세요.
												- id : admin
												- pw : a1234
											> 로그인 인증 시, loginSecurity.jsp로 이동하여 인증을 진행 할 수 있도록 해주세요.
											> 로그인 인증 실패 시, loginFailed.jsp로 이동할 수 있도록 해주세요.
												  
										3. 게시글 클릭 시, 해당 게시글 상세보기 페이지로 이동합니다.
											> 상세보기 페이지로 이동할 때, 조회수가 상승합니다.
									 -->
								 	<h4>메뉴 박스</h4>
								 	<a href="ch11_test_boardForm.jsp"><input type="button" value="등록"></a>
								 	<a href="ch11_test_boardList.jsp"><input type="button" value="게시판"></a>
                            		<a href="ch11_test_dropbox.jsp"><input type="button" value="자료실"></a>
                            		<a href="ch11_test_logout.jsp"><input type="button" value="로그아웃"></a><br/><br/>
								 	<hr/>
								 	<%
									 	BoardRepository br = BoardRepository.getInstance();
								 		List<BoardVO> memlist = br.selectBoardList();
								 		
								 	
								 	%>
								 	<table border=1>
								        <tr>
								            <td>글 번호</td>
								            <td>제목</td>
								            <td>작성자</td>
								            <td>작성일</td>
								            <td>조회수</td>
								        </tr>
								        <%
								        	if (memlist.size() == 0){
								        		%>
								        		<tr>
								        			<td colspan=5>목록이 존재하지 않습니다.</td>
								        		</tr>
								        		<%
								        	}else{
								        %>
								         <c:set value="<%=memlist %>" var="list"/>
								        	<c:forEach items="${list}" var="board" varStatus="status">
								            <tr>
								            	<td><c:out value="${board.no}" /></td>
								                <td><a href="ch11_test_boardView.jsp?no=${board.no}"><c:out value="${board.title}" /></a></td>
								                <td><c:out value="${board.writer}" /></td>
								                <td><c:out value="${board.regDate}" /></td>
								                <td><c:out value="${board.hit}" /></td>
								            </tr>
								        </c:forEach>
								        <%
								        	}
								        %>
								    </table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>