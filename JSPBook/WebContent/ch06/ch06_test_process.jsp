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
									<p class="card-title text-white">6장 Form 태그</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">3. input 태그</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">form01.jsp</p>
									
									<!-- 
										아래와 같은 형식으로 출력해주세요.
										
										아이디 : a001
										비밀번호 : 1234
										이름 : 홍길동
										연락처 : 010-1234-1234
										이메일 : hongkd@n.com
										성별 : 남자
										취미 : 운동 음악감상 영화감상
										소개 : 반갑습니다. 
											  잘부탁드립니다.
											  열심히하겠습니다
											  
										모든 출력은 JSTL을 활용하여 출력해주세요.
									 -->
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











