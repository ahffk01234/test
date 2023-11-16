<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@page import="dao.BookRepository"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.Book"%>

<html>
<head>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>도서 목록</title>
</head>
<body>
<%
	BookRepository bookDao = BookRepository.getInstance();
	List<Book> listOfBook = bookDao.getAllBooks();
%>
	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">도서 목록</h1>
		</div>
	</div>
      
	<div class="container">	
	<%
	for(int i=0; i<listOfBook.size(); i++){
		Book book = listOfBook.get(i);
	%>
		<div class="row">
			<div class="col-md-10">	
				<p><h5 ><b>[<%=book.getCategory()%>] <%=book.getName()%></b></h5>
				<p style="padding-top: 10px"><%=book.getUnitPrice()%>... 
				<p><%=book.getAuthor()%> | <%=book.getPublisher()%> | <%=book.getUnitPrice()%>원
			</div>	
			<div class="col-md-2"  style="padding-top: 60px">						    			 
				<a href="./book.jsp?id=<%=book.getBookId()%>" class="btn btn-secondary" role="button"> 상세정보 &raquo;></a>				
			</div>				
		</div>
		<hr>
	<%
		}
	%>
	</div>	
	<%@ include file="footer.jsp" %>
</body>
</html>
