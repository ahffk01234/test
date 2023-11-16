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
									
									<form action="test_validation01_process.jsp" method="post" name="loginForm">
										아이디 : <input type="text" id="id" name="id"/>
										비밀번호 : <input type="text" id="pw" name="pw"/>
										<input type="submit" value="전송" id="sendBtn"/>
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

$(function(){
	var sendBtn = $("#sendBtn");
	var loginForm = $("#loginForm");
	
	sendBtn.on("click",function(){
		var id = $("#id").val();  
		var pw = $("#pw").val();
		
		console.log(id);
		console.log(pw);
		
		if(id == "" ){
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
		}
		if(pw.search(id) > -1){
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			$("#pw").focus();
			return false;
		}
		loginForm.submit();
	});
});
</script>
</html>











