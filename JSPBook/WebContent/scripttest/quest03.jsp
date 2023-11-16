<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>쉽게 배우는 JSP 웹 프로그래밍</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/feather/feather.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/vertical-layout-light/style.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/favicon.png" />
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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
                  <div class="col-md-12 stretch-card grid-margin">
                     <div class="card data-icon-card-primary">
                        <div class="card-body">
                           <p class="card-title text-white">스크립트 연습</p>
                           <div class="row">
                              <div class="col-12 text-white">
                                 <p class="text-white">QUEST03</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-12 stretch-card grid-margin">
                     <div class="card">
                        <div class="card-body">
                           <p class="card-title">quest03.jsp</p>
                           
                           <div class="card">
                              <div class="card-body">
                                 <p class="card-title text-info">DAEDEOK COFFEE MENU</p>
                                 
                                 <div class="row">
                                    <div class="col-md-4 grid-margin grid-margin-md-0 stretch-card">
                                       <div class="card">
                                          <div class="card-body">
                                             <h4 class="card-title">COFFEE & ESPRESSO</h4>
                                             <ul class="list-ticked">
                                                <li>
                                                   스타벅스 돌체 라떼 <code class="text-primary">5600</code>원
                                                </li>
                                                <li>
                                                   화이트 초콜릿 라떼 <code class="text-primary">5600</code>원
                                                </li>
                                                <li>
                                                   카라멜 마끼아또 <code class="text-primary">5600</code>원
                                                </li>
                                                <li>
                                                   볼론드 에스프레소 라떼 <code class="text-primary">5600</code>원
                                                </li>
                                                <li>
                                                   카페 모카 <code class="text-primary">5100</code>원
                                                </li>
                                                <li>
                                                   카푸 치노 <code class="text-primary">4600</code>원
                                                </li>
                                                <li>
                                                   카페 라떼 <code class="text-primary">4600</code>원
                                                </li>
                                                <li>
                                                   오늘의 커피 <code class="text-primary">3800</code>원
                                                </li>
                                             </ul>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-md-4 grid-margin grid-margin-md-0 stretch-card">
                                       <div class="card">
                                          <div class="card-body">
                                             <h4 class="card-title">TEAVANA</h4>
                                             <ul class="list-arrow">
                                                <li>
                                                   제주 유기농 말차로 만든 라떼 <code class="text-primary">6100</code>원
                                                </li>
                                                <li>
                                                   유자 민트 티 <code class="text-primary">5600</code>원
                                                </li>
                                                <li>
                                                   라임 패션 티 <code class="text-primary">5600</code>원
                                                </li>
                                                <li>
                                                   자몽 허니 블랙 티 <code class="text-primary">5100</code>원
                                                </li>
                                                <li>
                                                   차이 티 라떼 <code class="text-primary">5100</code>원
                                                </li>
                                             </ul>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-md-4 grid-margin grid-margin-md-0 stretch-card">
                                       <div class="card">
                                          <div class="card-body">
                                             <h4 class="card-title">DAEDEOK FIZZIO</h4>
                                             <ul class="list-star">
                                                <li>
                                                   요거트 주스 & 망고 젤리 피지오 <code class="text-primary">6100</code>원
                                                </li>
                                                <li>
                                                   쿨 라임 피지오 <code class="text-primary">6600</code>원
                                                </li>
                                                <li>
                                                   패션 망고 티 레모네이드 피지오 <code class="text-primary">7100</code>원
                                                </li>
                                                <li>
                                                   그린 티 레모네이드 피지오 <code class="text-primary">7100</code>원
                                                </li>
                                             </ul>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-md-8 grid-margin grid-margin-md-0 stretch-card">
                                       <div class="card">
                                          <div class="card-body">
                                             <h4 class="card-title">주문 진행표</h4>
                                             <div class="table-responsive">
                                                <table class="table table-bordered text-center" width="100%">
                                                   <tr height="100px">
                                                      <td width="20%">
                                                         <p data-menu="돌체 라떼">
                                                         돌체 라떼<br/>
                                                         </p>
                                                         <code class="text-primary">5600</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="화이트 초콜릿 라떼">
                                                         화이트<br/>
                                                         초콜릿 라떼<br/>
                                                         </p>
                                                         <code class="text-primary">5600</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="카라멜 마끼아또">
                                                         카라멜<br/>
                                                         마끼아또<br/>
                                                         </p>
                                                         <code class="text-primary">5600</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="볼론드 에스프레소 라떼">
                                                         볼론드<br/>
                                                         에스프레소 라떼<br/>
                                                         </p>
                                                         <code class="text-primary">5600</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="카페모카">
                                                         카페모카<br/>
                                                         </p>
                                                         <code class="text-primary">5100</code>
                                                      </td>
                                                   </tr>
                                                   <tr height="100px">
                                                      <td width="20%">
                                                         <p data-menu="카푸치노">
                                                         카푸치노<br/>
                                                         </p>
                                                         <code class="text-primary">4600</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="카페 라떼">
                                                         카페 라떼<br/>
                                                         </p>
                                                         <code class="text-primary">4600</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="오늘의 커피">
                                                         오늘의 커피<br/>
                                                         </p>
                                                         <code class="text-primary">3800</code>
                                                      </td>
                                                      <td width="20%">
                                                      </td>
                                                      <td width="20%">
                                                      </td>
                                                   </tr>
                                                   <tr height="100px">
                                                      <td width="20%">
                                                         <p data-menu="제주 유기농 말차로 만든 라떼">
                                                         제주 유기농<br/>
                                                         말차로<br/>
                                                         만든 라떼<br/>
                                                         </p>
                                                         <code class="text-primary">6100</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="유자민트 티">
                                                         유자<br/>
                                                         민트 티<br/>
                                                         </p>
                                                         <code class="text-primary">5600</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="라임 패션 티">
                                                         라임<br/>
                                                         패션 티<br/>
                                                         </p>
                                                         <code class="text-primary">5600</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="자몽 허니 블랙 티">
                                                         자몽 허니<br/>
                                                         블랙 티<br/>
                                                         </p>
                                                         <code class="text-primary">5100</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="차이 티 라떼">
                                                         차이<br/>
                                                         티 라떼<br/>
                                                         </p>
                                                         <code class="text-primary">5100</code>
                                                      </td>
                                                   </tr>
                                                   <tr height="100px">
                                                      <td width="20%">
                                                         <p data-menu="망고 젤리 피지오">
                                                         망고 젤리<br/>
                                                         피지오<br/>
                                                         </p>
                                                         <code class="text-primary">6100</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p  data-menu="쿨 라임 피지오">
                                                         쿨<br/>
                                                         라임 피지오<br/>
                                                         </p>
                                                         <code class="text-primary">6600</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="레모네이드 피지오">
                                                         레모네이드<br/>
                                                         피지오<br/>
                                                         </p>
                                                         <code class="text-primary">7100</code>
                                                      </td>
                                                      <td width="20%">
                                                         <p data-menu="그린티 피지오">
                                                         그린 티<br/>
                                                         피지오<br/>
                                                         </p>
                                                         <code class="text-primary">7100</code>
                                                      </td>
                                                      <td width="20%">
                                                      </td>
                                                   </tr>
                                                </table>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-md-4 grid-margin grid-margin-md-0 stretch-card">
                                       <div class="card">
                                          <div class="card-body">
                                             <h4 class="card-title">주문 내역</h4>
                                             <blockquote class="blockquote">
                                                <h4 id="ord-id">A-001</h4>
                                                <div class="table-responsive">
                                                   <table class="table table-bordered text-center" width="100%" >
                                                      <thead>
                                                         <tr style='font-size:9px;'>
                                                            <th>메뉴명</th>
                                                            <th>수량</th>
                                                            <th>금액</th>
                                                         </tr>
                                                      </thead>
                                                      <tbody id="order-table">
                                                      </tbody>
                                                   </table>
                                                </div>
                                                <div>
                                                   <h5>총 금액 : <font id="total"></font></h5>
                                                </div>
                                             </blockquote>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <script type="text/javascript">
   
   $(function() {
	   
	    var html = "";
	    var already = {};
	    var total = 0;

	    $('td').click(function() {
	        var menu = $(this).find('p').attr('data-menu');
	        var index = $('td').index(this);
	        console.log("td인덱스" + index);
	        
	        var menuName = $(this).find("p").attr('data-menu');
	        if (menuName.trim() === "") {
	            return;
	        };
	        
	        if (!already[menu]) {
	            already[menu] = 1;
	            console.log("제일 초기 클릭 : " + already[menu]);
	            var price = parseInt($(this).find('code').text());
	            html += "<tr><td>" + menu + "</td> <td><p id=i" + index + ">" + already[menu] + "</p></td> <td>" + price + "</td></tr>";
	        } else {
// 	            already[menu] += 1;
	            var cnt = parseInt($("#i"+index).text());
	            console.log("주문 수량 : " + typeof cnt, typeof menu);
	            console.log(cnt+1);
	            var cnt_i = cnt+1;
	            $("#i"+index).html("<b>"+cnt_i+"</b>");
// 	            $("#" + index).html(cnt);
	        };
	        
	        total += parseInt($(this).find('code').text());
	        $("#total").text(total);
	        
	        $("#order-table").html(html);
	    });
	});


//    $(function(){
//       var dataArr = new Array();
//       var countArr = new Array();
      
//       $("td").on("click", function(){
//          var price = 0;
//          var dataFlag = false;
//          var html = "";
//          var orderMenu = $(this).find("p").data("menu");
//          var orderPrice = $(this).find("code").text();
         
//          if(dataArr.length == 0){
//             dataArr.push(orderMenu + "_" + orderPrice); // 첫번째 주문
//             countArr.push(1);   // 1 세팅
//          }else{
//             for(var i = 0; i < dataArr.length; i++){
//                if(orderMenu == dataArr[i].split("_")[0]){
//                   countArr[i]++;
//                   dataFlag = true;
//                   break;
//                }else{   // 내가 누른 녀석이 같은놈이 아니라 처음 누르는애다
//                   countArr.push(1);
//                }
//             }
//             if(dataFlag == false){
//                dataArr.push(orderMenu + "_" + orderPrice);
//             }
//          }
//          console.log(dataArr.length);
//          console.log(countArr.length);
//          for(var i = 0; i < dataArr.length; i++){
//             html += "<tr class='menu'>";
//             html += "   <td style='font-size:20px;'>";
//             html += "      " + dataArr[i].split("_")[0];
//             html += "   </td>";
//             html += "   <td style='font-size:20px;'>";
//             html += "      " + countArr[i];
//             html += "   </td>";
//             html += "   <td style='font-size:20px;'>";
//             html += "      " + dataArr[i].split("_")[1];
//             html += "   원</td>";
//             html += "</tr>";
//             price += parseInt(dataArr[i].split("_")[1]) * countArr[i];
//          }
         
//          $("#order-table").html(html);
//          $("#total").html(price);
//       });
//    });

   </script>
</body>
</html>