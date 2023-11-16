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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
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
									<p class="card-title text-white">8장 유효성 검사</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">submit 이벤트 처리</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">test_validation01.jsp</p>
									
									<form id="loginForm" action="test_validation01_process.jsp" method="post" name="loginForm">
										아이디 : <input type="text" id="id" name="id"/>
										비밀번호 : <input type="text" id="pw" name="pw"/>
										비밀번호 확인 : <input type="text" id="pw1" name="pw1"/>
										<input type="button" value="전송" onclick="check()"/>
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


<script type="text/javascript">

function check(){
	
	var loginForm = document.loginForm;
	
	var id = loginForm.id.value;  
	var pw = loginForm.pw.value;  
		
	var regExpCountN = /([0-9]+){3}|([a-zA-Z]|[0-9]+){3}/;
	var regExpCountA = /[a-zA-Z]{3}/;
		
	if(regExpCountN.test(pw)){
		alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
		loginForm.pw.select();
		return false;
	}
	loginForm.submit();
}
</script>
</html>











