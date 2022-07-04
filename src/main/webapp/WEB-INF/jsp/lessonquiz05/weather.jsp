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
</head>
<body>
	<div class="d-flex " >
	  <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
		 <div class="col-2 bg-primary">
		    <tr>
		     <td>날씨</td>
		     <td>날시입력</td>
		     <td>태마날씨</td>
		     <td>관측기후</td>
		    </tr>
		 </div>
		</nav>
		<div class="col-10">
		 <strong><h3>과거 날씨</h3></strong>
		   <table class = "table text-center ">
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
		            <td><fmt:formatDate value="${weather.date}" pattern="yyyy년M월d일" /></td>
		            <td>
		            <c:choose>
		            <c:when test="${weather.weather eq '맑음'}">
		                <img src="/img/sunny.jpg">
		            </c:when>
		            <c:when test="${weather.weather eq '비'}">
		                <img src="/img/rainy.jpg">
		            </c:when>
		            <c:when test="${weather.weather eq '흐림'}">
		                <img src="/img/cloudy.jpg">
		            </c:when>
		            <c:when test="${weather.weather eq '구름조금'}">
		                <img src="/img/partlyCloudy.jpg">
		            </c:when>
		            </c:choose>
		            </td>
		            <td>${weather.temperatures}</td>
		            <td>${weather.precipitation}mm</td>
		            <td>${weather.microDust}</td>
		            <td>${weather.windSpeed}km/h</td>
		          		
				</tr>
		        </c:forEach>
		     </tbody>      
		   </table>
		</div>

	</div>
	<div class="d-flex">
	    <div class="col-2">
	    
	    </div>
	    <div class="col-10">
	         <tr>
	            <td>(07062)서울시 동작구 여의대방로16길61</td><br>
	            <td>Copyright@2020 KMA. ALL Rights RESERVED</td>
	         </tr>
	    
	    </div>
	
	</div>

</body>
</html>