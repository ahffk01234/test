<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
</head>
<body>
	<%@include file="menu.jsp" %>
	<!-- 
		선언문을 활성화하고, 
		greeting 변수에 "도서 웹 쇼핑몰"문자열을 초기화해주세요.
		tagline 변수에 "Welcome to Web Market!"문자열을 초기화해주세요.
	 -->
	 <%! 
	 	String greeting = "도서 웹 쇼핑몰";
 		String tagline = "Welcome to Web Market!";
 	%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<!-- 표현문을 이용한 변수 greeting의 값을 출력하도록 표현문 태그를 작성한다. -->
				<%= greeting %>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3>
				<!-- 변수 tagline의 값을 출력하도록 표현문 태그를 작성한다. -->
				<%= tagline %>
			</h3>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>










