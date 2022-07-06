<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>


<link rel="stylesheet" type="text/css" href="/css/lesson05_quiz05.css">
</head>
<body>
	<div id="wrap" class="">
		<div class="contents d-flex">
			<nav class=" bg-primary  ">
			   <%--로고 영역 --%>
			    <div class="d-flex justify-content-center">
			      <img class="" src= "https://cdn.imweb.me/thumbnail/20220429/b61a12701a934.png"width="100">
			    </div>
			   <%--메뉴 영역 ul(nav),il(nav-item),a(nav-link) --%>
				<ul class="nav  flex-column ">
					<li class="nav-item"><a class="nav-link menu-font" href="#">날씨</a></li>
					<li class="nav-item"><a class="nav-link menu-font" href="/lessonquiz05/AddWeather">날시입력</a></li>
					<li class="nav-item"><a class="nav-link menu-font" href="#">태마날씨</a></li>
					<li class="nav-item"><a class="nav-link menu-font" href="#">관측기후</a></li>
				</ul>
			</nav>
			<section class="right ">
				<strong><h3>과거 날씨</h3></strong>
				<table class="table text-center ">
					<thead>
						<tr>
							<td>날짜</td>
							<td>날씨</td>
							<td>기온</td>
							<td>강수량</td>
							<td>미세먼지</td>
							<td>풍속</td>
						</tr>

					</thead>
					<tbody>
						<c:forEach var="weather" items="${NewWeather}" varStatus="status">
							<tr>
								<td><fmt:formatDate value="${weather.date}"
										pattern="yyyy년M월d일" /></td>
								<td><c:choose>
										<c:when test="${weather.weather eq '맑음'}">
											<img src="/img/sunny.jpg" alt="맑음">
										</c:when>
										<c:when test="${weather.weather eq '비'}">
											<img src="/img/rainy.jpg" alt="비">
										</c:when>
										<c:when test="${weather.weather eq '흐림'}">
											<img src="/img/cloudy.jpg" alt="흐림">
										</c:when>
										<c:when test="${weather.weather eq '구름조금'}">
											<img src="/img/partlyCloudy.jpg" alt="구름조금">
										</c:when>
									</c:choose></td>
								<td>${weather.temperatures}ºC</td>
								<td>${weather.precipitation}mm</td>
								<td>${weather.microDust}</td>
								<td>${weather.windSpeed}km/h</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>

		</div>
		<footer class="d-flex align-items-center">
			<div class = "d-flex justify-content-center  m-1">
			   <img class="" src= "https://cdn.imweb.me/thumbnail/20220429/b61a12701a934.png"width="150">
			</div>
			<div class = "">
				<tr>
					<td>(07062)서울시 동작구 여의대방로16길61</td>
					<br>
					<td>Copyright@2020 KMA. ALL Rights RESERVED</td>
				</tr>

			</div>

		</footer>
	</div>
</body>
</html>