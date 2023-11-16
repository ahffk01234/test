<%@page import="java.util.List"%>
<%@page import="ch07.vo.MemberVO"%>
<%@page import="ch07.dao.MemberDAO"%>
<%@ page language="java" pageEncoding="UTF-8"%>
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
									<p class="card-title text-white">7장 파일업로드</p>
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
									<p class="card-title">ch07_test_signin.jsp</p>
									
									<!-- 
										1. 로그인 성공 후, 넘어왔을때 'a001님! 환영합니다!' 메세지를 출력해주세요. (알림창)
										
										2. 회원 목록에 저장되어 있는 회원 모두를 출력해주세요.
										
											[로그아웃 버튼]
											─────────────────────────────────────────────────
												이미지	|	회원정보				|	버튼	
											─────────────────────────────────────────────────
												프로필	|	아이디 : a001			|
												이미지	|	비밀번호 : 1234			|
														|	이름 : 홍길동			|
														|	성별 : 남자				|
											─────────────────────────────────────────────────
											
										3. 로그아웃 버튼 클릭 시, 회원 로그인 페이지로 이동하여 회원 등록을 진행할 수 있도록 해주세요.
									 -->
									 <%
									 	MemberDAO memberDao = new MemberDAO();
									 	List<MemberVO> list = memberDao.getMemberList();
									 	%>
									 	<table border=1>
									 	<tr>
									 		<td><p>이미지</p></td>
									 		<td><p>회원정보</p></td>
									 		<td><p>회원정보</p></td>
									 	</tr>
									 	<%
									 	for(MemberVO mv : list){
									 	%>
									 	<tr>
									 		<td><img src="${pageContext.request.contextPath}/resources/images/<%=mv.getFilename() %>" style="width: 100%" /></td>
									 		<td>아이디 : <%=mv.getMem_id() %><br/>
									 			비밀번호 : <%=mv.getMem_pw() %><br/>
									 			이름 : <%=mv.getMem_name() %><br/>
									 			성별 : <%=mv.getMem_sex() %></td>
									 	</tr>
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











