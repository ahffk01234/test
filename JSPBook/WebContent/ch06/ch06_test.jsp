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
										아이디, 비밀번호, 이름, 연락처, 이메일, 성별, 취미, 자기소개를 입력받는 폼을 작성하세요.
										아이디 속성 name은 mem_id
										비밀번호 속성 name은 mem_pw
										이름 속성 name은 mem_name
										연락처 속성 name은 mem_phone1, mem_phone2, mem_phone3
											> [첫번재 자리] 선택해주세요/010/011/016/017/019
											> [두번째 자리] max 4자리까지
											> [세번째 자리] max 4자리까지
										이메일 속성 name은 mem_email
										성별 속성 name은 mem_gender
											> 남자 여자 선택할 수 있게
										취미 속성 name은 mem_hobby
											> 독서 운동 음악감상 여행 영화감상
											> value는 한글이 아닌 영문으로 설정해주세요.
										소개 속성 name은 mem_introduction
											> wrap 속성은 hard로 설정 후 개행문자가 적용될 수 있도록 해주세요.
										
										 입력받은 모든 데이터를 ch06_test_process.jsp로 전송해주세요.
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











