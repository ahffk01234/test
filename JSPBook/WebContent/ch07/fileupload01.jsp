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
									<p class="card-title text-white">7장 파일업로드</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">3. Commons-FileUpload를 이용한 파일 업로드</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">fileupload01.jsp</p>
									
									<!-- 
										form 태그를 이용한 파일 업로드를 진행 시, 기본 적으로 설정해주어야 하는 설정이 있다,
										method방식은 'post', enctype은 'multipart/form-data'로 설정 해주어야한다.
									 -->
									 
									 <form action="fileupload01_process.jsp" method="post" enctype="multipart/form-data">
									 	<p> 이름 : <input type="text" name="name"></p>
									 	<p> 제목 : <input type="text" name="subject"></p>
										<p> 파일 : <input type="file" name="filename" multiple="multiple"/><p>
										<p><input type="submit" value="파일 올리기"/></p>
									</form>
									
									
									<form action="fileupload02_process.jsp" method="post" enctype="multipart/form-data">
										파일 : <input type="file" name="filename" multiple="multiple"/>
										<input type="submit" value="파일전송"/>
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











