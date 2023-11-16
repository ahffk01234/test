<%@page import="ch11.vo.BoardFileVO"%>
<%@page import="ch11.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="ch11.dao.BoardRepository"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>쉽게 배우는 JSP 웹 프로그래밍</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath }/resources/vendors/feather/feather.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath }/resources/css/vertical-layout-light/style.css">
<link rel="shortcut icon"
   href="${pageContext.request.contextPath }/resources/images/favicon.png" />
</head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<body>
   <div class="container-scroller">
      <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
         <div
            class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo mr-5"
               href="${pageContext.request.contextPath }/index.jsp"> <img
               src="${pageContext.request.contextPath }/resources/images/logo.svg"
               class="mr-2" alt="logo" />
            </a>
         </div>
         <div
            class="navbar-menu-wrapper d-flex align-items-center justify-content-end"></div>
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
                           <p class="card-title text-white">11장 예외처리</p>
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
                           <p class="card-title">ch11_test_dropbox.jsp</p>

                           <!-- 
                              첨부한 파일들을 확인 할 수 있는 자료실 페이지를 구성해주세요.
                              - 자료실을 구성하는데 필요한 내용 모두는 board를 작성했던 방식을 참고하여 작성한다.
                              
                              1. 파일의 유형에 따라 유형에 맞는 default 이미지로 리스트를 구성하세요.
                              
                              [출력 예]
                              
                              자료실
                              [pdf]   [excel]   [excel]   [ppt]
                              [image] [txt]   [word]   [txt]
                              [etc]   [etc]   [pdf]   [ppt]
                              [...]
                              
                              목록 
                            -->

                           <h4>메뉴 박스</h4>
                           <hr />
                           <div class="container">
                              <a href="ch11_test_boardList.jsp"><button type="button">게시판</button></a>
                              <a href="ch11_test_dropbox.jsp"><button type="button">자료실</button></a>
                              <a href="ch11_test_logout.jsp"><button type="button">로그아웃</button></a>
                           </div>
                           <hr />
                           <h3>자료실</h3>
                           <hr />

                           <%
                              BoardRepository br = BoardRepository.getInstance();
                                      List<BoardVO> boardlist = br.selectBoardList();
                           

                           %>



                           <table border="1">
                           
                           <%
                           if(boardlist.size() == 0){
                           %>
                           <tr>
                              <td>
                                 자료가 없습니다.
                              </td>
                           </tr>
                           <%   
                           }else{
                              
                              for(int i = 0; i < boardlist.size(); i++){
                                 BoardVO bv = boardlist.get(i);
                                 
                                 BoardFileVO bfv = bv.getFileVO();
                                 System.out.println(bfv.getContentType());
                           %>
                           
                           
                              <tr>
                                 <td>
                                    <%
                                    String input = bfv.getContentType();
                                    String[] type = input.split("/");
                                      
                                    if(type[0].equals("image")){
                                    
                                    %>
                                    
                                    <img src="${pageContext.request.contextPath }/resources/images/<%=bfv.getFileName() %>" alt="파일" style="width:150px; height:200px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    
                                    <%
                                    }else{
                                     %>
                                    
                                    <h2>파일</h2>
                                    <%
                                    }
                                    %>
                                    
                                    <div>
                                       <ul>
                                          <li>파일명 : <a href="${pageContext.request.contextPath }/resources/images/<%=bfv.getFileName() %>" download><%=bfv.getFileName() %></a></li>
                                          <li>크기 : <%=bfv.getFileSize() %></li>
                                       </ul>
                                    </div></td>

                              </tr>
                           <%
                              }
                           }
                           %>


                           </table>


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