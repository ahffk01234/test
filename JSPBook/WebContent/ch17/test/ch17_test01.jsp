<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8" errorPage="isErrorPage_error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<script type="text/javascript">
	var rnd;
	var num;
	
	var intervalId;
	var intervalId01;
	var intervalId02;
	
function pick(){
	
	intervalId = setInterval(function() {
		rnd = Math.floor(Math.random() * 27);
		num = "#name" + rnd;
	    console.log(num);
		
	    console.log($("#progress").val());
	    var element = $(num);
		
	    element.css('background-color', 'yellow');
	    var progressBar = $("#progress");
        progressBar.attr('value', parseInt(progressBar.attr('value')) + 5);

	}, 500);
	
	intervalId01 = setInterval(function() {
		$("td").css('background-color', 'white');

	}, 600);
	    
	intervalId02 = setInterval(function() {
		$("#disp").text($(num).text());
	    clearInterval(intervalId);
	    clearInterval(intervalId01);
	    clearInterval(intervalId02);
	}, 10010);
	
}

function color() {
	var rnd = Math.floor(Math.random()*27);
	const num = "#name" + rnd;
	console.log(num);
	
	var element = $(num);
		
	element.css('background-color','yellow');
}

</script>
<style type="text/css">
table{
text-align:center;
}
td{
width: 70px;
height: 40px;
}
</style>
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
									<p class="card-title text-white">17장 JSP 표준 태그 라이브러리</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">2. JSTL이 제공하는 태그의 종류와 사용법</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">ch17_test01.jsp</p>
									 
									 <c:set value="박유빈97,박지석,윤선주,박성민,우태원,김재용,
												양혜원,남민주,오재원,이정민,송기돈,임찬빈,
												이주희,이나은,문수빈,신정연,이종영,박유빈93,
												이서준,정천용,차수연,이주영,최미키코,조예진,
												김명철,이혜린,김지연" var="names"/>
									 
									 <c:set value="${fn:split(names,',') }" var="name"/>
									 <table border=1>
									 
									 	<tr>
									 	<c:forEach items="${name }" var="nm" varStatus="stat">
									 			<c:choose>
									  			<c:when test="${stat.index % 9 == 0 }">
									  			</tr><tr>
									  				<td id="name${stat.index }">
									  					<c:out value="${name[stat.index] }"/>
									  				</td>
									  			</c:when>
									  			
									  			<c:otherwise>
									 				<td id="name${stat.index }">
									 					<c:out value="${name[stat.index] }"/>
									 				</td>
									  			</c:otherwise>
									 			</c:choose>
									 	</c:forEach>
									 	</tr>
									 </table>
									 <br/>
									 <h4>진행상항</h4>
										<progress id="progress" value="0" min="0" max="100"></progress><br/>
									 <input type="button" value="뽑기" onclick="pick()">
									 <div>결과 : <span id="disp"></span>
									 </div>
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











