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
									<p class="card-title text-white">6장 form태그</p>
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
									<p class="card-title">ch06_test.jsp</p>
									
									<!-- 
										1) ch06_test.jsp에 
										- 아이디, 비밀번호, 이름, 연락처, 성별, 취미, 소개를 입력받는 폼을 작성하세요
											아이디	name = mem_id
											비밀번호	name = mem_pw
											이름		name = mem_name
											연락처	name = mem_phone1, mem_phone2, mem_phone3
											 > [첫번째] 010,011,016,017,019 select 이용
											 > [두번째] type text
											 > [세번째] type text
											성별		name = mem_gender
											 > 남자 여자
											취미		name = mem_hobby
											 > 독서 운동 음악감상 여행 영화감상
											소개		name = mem_comment
											 > textarea 이용
											 > row, cols 자유
										- 버튼은 submit, reset 작성
											> submit 버튼은 전송하기로 생성
											> reset  버튼은 취소하기로 생성
											
										2) ch06_test_process.jsp로 입력한 데이터를 전송해주세요
									 -->
									<h3>회원가입</h3>
									<form action="ch06_test_process.jsp" name="member" method="post">
										<p>아이디 : <input type="text" name="mem_id"/> <input type="button" value="아이디 중복검사"/></p>
										<p>비밀번호 : <input type="password" name="mem_pw"/></p>
										<p>이름 : <input type="text" name="mem_name"/></p>
										<p>
											연락처 : 
											<select name="mem_phone1">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="019">019</option>
											</select>
											- <input type="text" maxlength="4" size="4" name="mem_phone2"/>
											- <input type="text" maxlength="4" size="4" name="mem_phone3"/>
										</p>
										<p>
											성별 : <input type="radio" name="mem_gender" value="남성" checked="checked"/> 남성
											<input type="radio" name="mem_gender" value="여성"/> 여성 
										</p>
										<p>
											취미 : 독서 <input type="checkbox" name="mem_hobby" value="book" checked="checked"/>
												 운동 <input type="checkbox" name="mem_hobby" value="power"/>
												 음악 <input type="checkbox" name="mem_hobby" value="music"/>
												 여행 <input type="checkbox" name="mem_hobby" value="trip"/>
												 영화 <input type="checkbox" name="mem_hobby" value="movie"/>
										</p>
										<textarea rows="3" name="mem_comment" cols="30" wrap="hard" placeholder="가입인사를 입력해주세요."></textarea>
										<p>
											<input type="submit" value="전송하기"/>
											<input type="reset" value="취소하기"/>
										</p>		
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