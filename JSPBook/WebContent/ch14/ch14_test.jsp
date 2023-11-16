<%@ page language="java" pageEncoding="UTF-8" errorPage="isErrorPage_error.jsp"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
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
									<p class="card-title text-white">14장 쿠키</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">1. 개인 정보</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">ch14_test.jsp</p>
									<!-- 
										아이디, 비밀번호를 입력받고 process 페이지로 넘겨서 인증처리를 진행해주세요.
										이때, 아이디 저장 체크를 하고 로그인 성공 시 쿠키를 저장해 저장된 쿠키로 인해
										다시 로그인 페이지를 reload 했을때, 아이디 저장이 체크가 되어 있는 상태에 로그인 페이지가 나타나게
										해주세요. 그리고 입력한 아이디가 아이디 입력란에 채워져 있게 해주세요 (아이디 저장 기능)
										
										아이디 저장 체크를 하지 않고 로그인 성공 시 쿠키를 저장하지 않고 다시 로그인 페이지를 reload했을 때
										아이디 저장이 체크가 되어 있지 않은 상태로 페이지가 나타나게 해주세요
									
									 -->
									 <%
									 	Cookie[] cookies = request.getCookies();
										
									 		boolean cookieFlag = false;
											String checkId = "";
											String cookieId = "";
													
											for(int i = 0; i < cookies.length; i++){
												if(cookies[i].getName().equals("check")){
													cookieFlag = true;
													checkId = cookies[i].getValue();
												}
												if(cookies[i].getName().equals("userId")){
													cookieId = cookies[i].getValue();
												}
											}
											
									 %>
									 <form action="ch14_test_process.jsp" method="post">
										아이디 : <input type="text" id="id" name="id" value="<%=cookieId%>"/><br/>
										비밀번호 : <input type="text" name="pw"/><br/>
										<p><input type="checkbox" id="check" name="check" <%if(cookieFlag){%>checked="checked"<%}%>>아이디 저장
										<input type="submit" value="전송"/></p>
									</form>

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











