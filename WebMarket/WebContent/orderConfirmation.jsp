<%@page import="vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 정보</title>
</head>
<body>

<%

	request.setCharacterEncoding("UTF-8");

	session.getId();
	
	String shopping_cartId ="";
	String shopping_name ="";
	String shopping_shoppingDate ="";
	String shopping_country ="";
	String shopping_zipCode ="";
	String shopping_addressName ="";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(int i = 0; i < cookies.length; i++){
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if(n.equals("Shopping_cartId")){
				shopping_cartId = URLDecoder.decode(thisCookie.getValue(), "utf-8");
			}
			if(n.equals("Shopping_name")){
				shopping_cartId = URLDecoder.decode(thisCookie.getValue(), "utf-8");
			}
			if(n.equals("Shopping_shoppingDate")){
				shopping_cartId = URLDecoder.decode(thisCookie.getValue(), "utf-8");
			}
			if(n.equals("Shopping_country")){
				shopping_cartId = URLDecoder.decode(thisCookie.getValue(), "utf-8");
			}
			if(n.equals("Shopping_zipCode")){
				shopping_cartId = URLDecoder.decode(thisCookie.getValue(), "utf-8");
			}
			if(n.equals("Shopping_addressName")){
				shopping_cartId = URLDecoder.decode(thisCookie.getValue(), "utf-8");
			}
		}
	}
%>
	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 정보</h1>
		</div>
	</div>
	<div class="container col-8 alert alert-info">
		<div class="text-center ">
			<h1>영수증</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>배송 주소</strong> <br> 성명 : <%=shopping_name %> <!-- 채워주세요 --><br> 
				우편번호 :<%=shopping_zipCode %> <!-- 채워주세요 --><br> 
				주소 : <%=shopping_addressName %> <!-- 채워주세요 -->(<!-- 채워주세요 -->)<br>
			</div>
			<div class="col-4" align="right">
				<p>	<em>배송일: <%=shopping_shoppingDate%><!-- 채워주세요 --></em>
			</div>
		</div>
		<div>
			<table class="table table-hover">			
			<tr>
				<th class="text-center">도서</th>
				<th class="text-center">#</th>
				<th class="text-center">가격</th>
				<th class="text-center">소계</th>
			</tr>
			<%
			
				int sum = 0;
				ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartList");
				if(cartList == null){
					cartList = new ArrayList<Product>();
				}
				
				for(int i = 0; i < cartList.size();i++){
					Product product = cartList.get(i);
					int total = product.getUnitPrice() * product.getQuantity();
					sum = sum + total;
%>

			<tr>
				<td class="text-center"><em><%=product.getPname()%><!-- 채워주세요 --> </em></td>
				<td class="text-center"><%=product.getQuantity()%><!-- 채워주세요 --></td>
				<td class="text-center"><%=product.getUnitPrice()%><!-- 채워주세요 -->원</td>
				<td class="text-center"><%=total%><!-- 채워주세요 -->원</td>
			</tr>
			<%
				}
			%>
				
			<tr>
				<td> </td>
				<td> </td>
				<td class="text-right">	<strong>총액: </strong></td>
				<td class="text-center text-danger"><strong><!-- 채워주세요 --> </strong></td>
			</tr>
			</table>			
				<a href="./ShoppingInfo.jsp?cartId=<%=shopping_cartId%><!-- 채워주세요 -->" class="btn btn-secondary" role="button"> 이전 </a>
				<a href="./thankCustomer.jsp"  class="btn btn-success" role="button"> 주문 완료 </a>
				<a href="./checkOutCancelled.jsp" class="btn btn-secondary"	role="button"> 취소 </a>			
		</div>
	</div>	
</body>
</html>
