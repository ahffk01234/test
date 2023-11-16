<%@page import="java.util.ArrayList"%>
<%@page import="vo.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%
   // id 얻어오기
   String id = request.getParameter("id");

   // id가 존재하지 않는 경우, 상품 목록 화면으로 이동
   if(id == null || id.trim().equals("")){
      response.sendRedirect("products.jsp");
      return;
   }

   ProductRepository dao = ProductRepository.getInstance();
   
   // id로 상품 조회
   Product product = dao.getProductById(id);
   if(product == null){
      response.sendRedirect("exceptionNoProductId.jsp");
   }
   
   // 상품 전체 조회
   ArrayList<Product> goodsList = dao.getAllProducts();
   
   Product goods = new Product();
   for(int i = 0; i < goodsList.size(); i++){
      goods = goodsList.get(i);
      if(goods.getProductId().equals(id)){
         break;
      }
   }
   
   // 카트목록 꺼내오기
   ArrayList<Product> list = (ArrayList<Product>) session.getAttribute("cartList");
   if(list == null){
       list = new ArrayList<Product>();
       session.setAttribute("cartList", list);
   }
   
   int cnt = 0;
   Product goodsQnt = new Product();
   for(int i = 0; i < list.size(); i++){
      goodsQnt = list.get(i);
      if(goodsQnt.getProductId().equals(id)){
         cnt++;
         int orderQuantity = goodsQnt.getQuantity()+ 1;
         goodsQnt.setQuantity(orderQuantity);
      }
   }
   
   if(cnt == 0){
      goods.setQuantity(1);
      list.add(goods);
   }
   
   response.sendRedirect("product.jsp?id=" + id);
%>