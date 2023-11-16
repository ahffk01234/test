<%@page import="dao.BookRepository"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="vo.Book"%>
<html>
<head>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>도서 정보</title>
</head>
<body>
<%
String id = request.getParameter("id");
BookRepository bookDao = BookRepository.getInstance();
Book book = bookDao.getBookById(id);%>
	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">도서 정보</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h4><b>[<%=book.getCategory()%>]<%=book.getName()%></b></h4>
				<p><%=book.getDescription()%>
				<p><b>도서코드 : </b><span class="badge badge-danger"> <%=book.getBookId()%></span>
				<p><b>출판사</b> : <%=book.getPublisher()%>				
				<p><b>저자</b> : <%=book.getAuthor()%>				
				<p><b>재고수</b> : <%=book.getUnitsInStock()%>
				<p><b>총 페이지수</b> : <%=book.getTotalPages()%>
				<p><b>출판일</b> : <%=book.getReleaseDate()%>
				<h4><%=book.getUnitPrice()%>원</h4>
				<p><b>이미지</b> : <%=book.getFilename()%>
				<p>
				<form name="addForm" action="./addCart.jsp" method="get">
					<input type="hidden" value="<%=book.getBookId()%>" name="id"/>
					<a href="#" class="btn btn-info"> 도서주문 &raquo;</a> 
					<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a> 
					<a href="./books.jsp" class="btn btn-secondary"> 도서목록 &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>
