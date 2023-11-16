<%@page import="dao.BookRepository"%>
<%@page import="vo.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String bookId = request.getParameter("bookId");
    String name = request.getParameter("name");
    String unitPrice = request.getParameter("unitPrice");
    String author = request.getParameter("author");
    String publisher = request.getParameter("publisher");
    String releaseDate = request.getParameter("releaseDate");
    String totalPages = request.getParameter("totalPages");
    String description = request.getParameter("description");
    String category = request.getParameter("category");
    String unitsInStock = request.getParameter("unitsInStock");
    String condition = request.getParameter("condition");
    String filename = request.getParameter("filename");
    
    Integer price;
    if(unitPrice == null){
    	price = 0;
    }else{
    	price = Integer.valueOf(unitPrice);
    }
    
    long stock;
    if(unitsInStock.isEmpty()){
    	stock = 0;
    }else{
    	stock = Long.valueOf(unitsInStock);
    }
    
    Book newBook = new Book();
    
    // 1) 전송받은 책 정보를 Book 객체에 저장해주세요.

	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setUnitPrice(price);
	newBook.setAuthor(author);
	newBook.setPublisher(publisher);
	newBook.setReleaseDate(releaseDate);
	newBook.setDescription(description);
	newBook.setCategory(category);
	newBook.setUnitsInStock(stock);
	newBook.setCondition(condition);
	newBook.setFilename(filename);
		
	// 2) 책 목록 페이지로 리다이렉트 해주세요. 	
	
	BookRepository brt = BookRepository.getInstance();
	
	brt.addBook(newBook);
	
	response.sendRedirect("books.jsp");
	
	
	
%>