<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
									<p class="card-title text-white">3장 디렉티브 태그</p>
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
									<p class="card-title">ch03_test.jsp</p>

									<p class="card-title">
										1) 리스트에서 000호 반 학생 이름을 모두 Core 태그 set에 저장한 후, 전체를 출력해주세요.<br/>
										2) 학생 4명씩 끊어서 출력해주세요.<br/>
											이름 이름 이름 이름<br/>
											이름 이름 이름 이름<br/>
											이름 이름 이름 이름<br/>
											...<br/>
										3) 4명씩 끊어서 출력 할 때, 본인의 이름은 '본인'으로 출력해주세요<br/>
											'본인' 글자를 출력 시, 굵은 글씨와 색깔은 녹색으로 출력해주세요.
									</p>
									 
									 <%
								 		String[] names = {
									 		"유재석","박명수","하동훈","정준하","조현준","홍길동","홍길순",
									 		"정형돈","노홍철","길성준","조세호","남창희","김용명","이용진"
									 	};
									 
									 	List<String> nameList = new ArrayList<String>();
									 	for(int i = 0; i < names.length; i++){
									 		nameList.add(names[i]);
									 	}
									 %>
									 
									 <c:set value="<%=nameList %>" var="names"/>
									 <c:forEach items="${names }" var="name" varStatus="stat">
									 	<c:if test="${name == '조현준' }">
									 		<font color="green"><b>본인</b></font>
									 	</c:if>
									 	<c:if test="${name != '조현준' }">
									 		${name }
									 	</c:if>
									 	<c:if test="${stat.count % 4 == 0 }">
									 		<br/>
									 	</c:if>
									 </c:forEach>
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











