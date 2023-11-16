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
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
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
									<p class="card-title">ch17_test.jsp</p>
									
									<!-- 
										문제) 000반 학생들의 각 성씨에 따른 인원수는 각각 몇명인지 작성해주세요.
										
										예) ----------------------
										'홍'씨 성을 가진 사람 : 00명
										'유'씨 성을 가진 사람 : 00명
										'정'씨 성을 가진 사람 : 00명
										....
									 -->
									 <h1>방법1</h1>
									 <p>각 성에 따른 증가 변수를 활용하여 출력</p>
									 
									 <!-- 이름을 ',' 단위로 구분하여 String 문자열 형태로 넣어준다. -->
									 <c:set value="박유빈97,박지석,윤선주,박성민,우태원,김재용,
												양혜원,남민주,오재원,이정민,송기돈,임찬빈,
												이주희,이나은,문수빈,신정연,이종영,박유빈93,
												이서준,정천용,차수연,이주영,최미키코,조예진,
												김명철,이혜린,김지연" var="names"/>
									 
									 <!-- function 태그 split 함수를 이용해 ','를 구분으로 각 이름을 분리한다. -->
									 <c:set value="${fn:split(names,',') }" var="name"/>
									 
									 <!-- 분리해서 만들어진 이름 별, 성을 변수로 분리하여 카운팅할 수 있도록 초기화한다. -->
									 <c:set value="0" var="kimCnt"/>
									 <c:set value="0" var="leeCnt"/>
									 <c:set value="0" var="jeongCnt"/>
									 <c:set value="0" var="parkCnt"/>
									 <c:set value="0" var="naCnt"/>
									 <c:set value="0" var="choiCnt"/>
									 <c:set value="0" var="noCnt"/>
									 <c:set value="0" var="songCnt"/>
									 <c:set value="0" var="chaCnt"/>
									 <c:set value="0" var="yangCnt"/>
									 <c:set value="0" var="wooCnt"/>
									 <c:set value="0" var="ohCnt"/>
									 <c:set value="0" var="yoonCnt"/>
									 <c:set value="0" var="sinCnt"/>
									 <c:set value="0" var="namCnt"/>
									 <c:set value="0" var="imCnt"/>
									 <c:set value="0" var="munCnt"/>
									 
									 <!-- 
									 	split으로 분리한 배열의 사이즈 만큼 반복문을 돌려서,
									 	각 성에 해당하는 카운트 변수를 성과 일치할때 1씩 증가시킨다.
									  -->
									 <c:forEach items="${name }" var="nm" varStatus="stat">
									 	<c:choose>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '김' }">
									 			<c:set value="${kimCnt+1 }" var="kimCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '이' }">
									 			<c:set value="${leeCnt+1 }" var="leeCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '정' }">
									 			<c:set value="${jeongCnt+1 }" var="jeongCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '박' }">
									 			<c:set value="${parkCnt+1 }" var="parkCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '나' }">
									 			<c:set value="${naCnt+1 }" var="naCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '최' }">
									 			<c:set value="${choiCnt+1 }" var="choiCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '노' }">
									 			<c:set value="${noCnt+1 }" var="noCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '송' }">
									 			<c:set value="${songCnt+1 }" var="songCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '차' }">
									 			<c:set value="${chaCnt+1 }" var="chaCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '양' }">
									 			<c:set value="${yangCnt+1 }" var="yangCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '우' }">
									 			<c:set value="${wooCnt+1 }" var="wooCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '오' }">
									 			<c:set value="${ohCnt+1 }" var="ohCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '윤' }">
									 			<c:set value="${yoonCnt+1 }" var="yoonCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '신' }">
									 			<c:set value="${sinCnt+1 }" var="sinCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '남' }">
									 			<c:set value="${noCnt+1 }" var="noCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '임' }">
									 			<c:set value="${imCnt+1 }" var="imCnt"/>
									 		</c:when>
									 		<c:when test="${fn:substring(name[stat.index],0,1) == '문' }">
									 			<c:set value="${munCnt+1 }" var="munCnt"/>
									 		</c:when>
									 	</c:choose>
									 </c:forEach>
									 
									 <h1>최종 집계 결과</h1>
									 <table border="1" width="100%">
									 	<tr align="center">
									 		<th>김</th><th>이</th><th>정</th>
									 		<th>박</th><th>나</th><th>최</th>
									 		<th>노</th><th>송</th><th>차</th>
									 		<th>양</th><th>우</th><th>오</th>
									 		<th>윤</th><th>신</th><th>남</th>
									 		<th>임</th><th>문</th>
									 	</tr>
									 	<tr align="center">
									 		<td>${kimCnt }</td>
									 		<td>${leeCnt }</td>
									 		<td>${jeongCnt }</td>
									 		<td>${parkCnt }</td>
									 		<td>${naCnt }</td>
									 		<td>${choiCnt }</td>
									 		<td>${noCnt }</td>
									 		<td>${songCnt }</td>
									 		<td>${chaCnt }</td>
									 		<td>${yangCnt }</td>
									 		<td>${wooCnt }</td>
									 		<td>${ohCnt }</td>
									 		<td>${yoonCnt }</td>
									 		<td>${sinCnt }</td>
									 		<td>${namCnt }</td>
									 		<td>${imCnt }</td>
									 		<td>${munCnt }</td>
									 	</tr>
									 </table>
									 
									 <h1>방법2</h1>
									 <p>컬렉션 Map을 활용한 출력</p>
									 <%
									 	List<String> list = new ArrayList<String>();
										String[] names = {
												"박유빈97","박지석","윤선주","박성민","우태원","김재용",
												"양혜원","남민주","오재원","이정민","송기돈","임찬빈",
												"이주희","이나은","문수빈","신정연","이종영","박유빈93",
												"이서준","정천용","차수연","이주영","최미키코","조예진",
												"김명철","이혜린","김지연"
												};
										
										for(int i = 0; i < names.length; i++){
											list.add(names[i]);
										}
										
										Map<String, Integer> map = new HashMap<>();
									 %>
									 <!-- 성을 key로 성에 따른 카운트 값을 value로 설정할 map 셋팅 -->
									 <c:set value="<%=map %>" var="map"/>
									 <h5>총 인원</h5>
									 <p><c:out value="<%=list.size() %>"/>명</p><br/>
									 
									 <!-- list에 있는 이름들을 먼저 확인해본다. -->
									 <c:forEach items="<%=list %>" var="item">
									 	<c:out value="${item }"/>
									 </c:forEach>
									 
									 <br/><hr/>
									 
									 <c:forEach items="<%=list %>" var="item">
									 	<c:choose>
									 		<c:when test="${map.get(fn:substring(item,0,1)) == null }">
									 			${map.put(fn:substring(item,0,1), 1) }
									 		</c:when>
									 		<c:otherwise>
									 			${map.put(fn:substring(item,0,1), map.get(fn:substring(item,0,1)) + 1) }
									 		</c:otherwise>
									 	</c:choose>
									 </c:forEach>
									 
									 <c:forEach items="<%=map.keySet() %>" var="item">
									 	<c:out value="'${item }'씨 성을 가진 사람 수 : ${map.get(item) }명"/>
									 </c:forEach>
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











