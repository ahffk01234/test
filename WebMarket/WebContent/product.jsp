<%@page import="vo.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="exceptionNoProductId.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<script type="text/javascript">
function addToCart(){
   if(confirm("상품을 장바구니에 추가하시겠습니까?")){
      document.addForm.submit();
   }else{
      document.addForm.reset();   // 사용중인 브라우저 버전에 따라 스크립트 에러가 발생할 수 있다.
   }
}

</script>

<body>
   <%@ include file="menu.jsp" %>
   
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">상품 정보</h1>
      </div>
   </div>
   <%
      String id = request.getParameter("id");
      ProductRepository productDao = ProductRepository.getInstance();
      Product product = productDao.getProductById(id);
   %>
   <div class="container">
      <div class="row" align="center">
         <div class="col-md-5">
            <img src="${pageContext.request.contextPath }/resources/images/<%=product.getFilename() %>"
            style="width:100%"/>
            </div>
         <div class="col-md-6">
            <h3><%=product.getPname() %></h3>
            <p><%=product.getDescription() %></p>
            <p><b>상품코드 : </b><span class="badge badge-danger"><%=product.getProductId() %></span></p>
            <p><b>제조사 : </b><%=product.getManufacturer() %></p>
            <p><b>분류 : </b><%=product.getCategory() %></p>
            <p><b>재고수 : </b><%=product.getUnitInStock() %></p>
            <h4><%=product.getUnitPrice() %></h4>
            
            <form action="addCart.jsp?id=<%=product.getProductId()%>" method="post" name="addForm">
            <p>
               <a href="#" class="btn btn-info" onclick="addToCart()">상품주문 &raquo;</a>
               <a href="cart.jsp" class="btn btn-warning" >장바구니 &raquo;</a>
               <a href="products.jsp" class="btn btn-secondary">상품목록 &raquo;</a>
            </p>
         </form>            
            
         </div>
      </div>
      <hr/>
   </div>
   <%@ include file="footer.jsp" %>
</body>
</html>