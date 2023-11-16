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
									<p class="card-title text-white">5장 내장 객체</p>
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
									<p class="card-title">ch05_test_process.jsp</p>
									
									<!--
										ch05_test.jsp 에서 전송받은 모든 파라미터를 출력해주세요.
										JSTL을 활용하여 출력해주세요.
										
										[출력 예시]
										아이디 : a001
										비밀번호 : 1234
										이름 : 홍길동
										성별 : 남자
										핸드폰번호 : 010-1234-1243
										주소 : 대전시 서구 오류동
										
										[여기까지 가능한 분은 진행해보세요!]
										출력을 완료했으면, 5초 뒤에 www.naver.com 홈페이지로 이동시켜주세요. 
									 -->
									 <%
									 	request.setCharacterEncoding("UTF-8");
									 
									 	String id = request.getParameter("id");
									 	String pw = request.getParameter("pw");
									 	String name = request.getParameter("id");
									 	String gender = request.getParameter("gender");
									 	String phone = request.getParameter("phone");
									 	String addr = request.getParameter("addr");
									 %>
									 <c:set value="<%=id %>" var="id"/>
									 <c:set value="<%=pw %>" var="pw"/>
									 <c:set value="<%=name %>" var="name"/>
									 <c:set value="<%=gender %>" var="gender"/>
									 <c:set value="<%=phone %>" var="phone"/>
									 <c:set value="<%=addr %>" var="addr"/>
									 아이디 : ${id }<br/>
									 비밀번호 : ${pw }<br/>
									 이름 : ${name }<br/>
									 성별 : ${gender }<br/>
									 핸드폰 : ${phone }<br/>
									 주소 : ${addr }<br/>
									 
									 <h3 id="out"></h3>
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
var a = 0;
var hTag = document.getElementById("out");

setInterval(() => {
	a++;
	hTag.innerHTML = a + "초 뒤에 이동합니다!";
	if(a == 5){
		location.href = "https://www.naver.com";
	}
}, 1000);
</script>
</html>











