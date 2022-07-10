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


<link rel="stylesheet" type="text/css" href="/css/lesson06_booking.css">
</head>
<body>
     <div class="container">
        <span class="text-center"><h1>통나무 팬션</h1></span>
        <nav class="bg-warning">
				<ul class="nav d-flex justify-content-between ">
					<li class="nav-item"><a class="nav-link menu-font" href="#">팬션소개</a></li>
					<li class="nav-item"><a class="nav-link menu-font" href="/lessonquiz05/AddWeather">객실보기</a></li>
					<li class="nav-item"><a class="nav-link menu-font" href="#">예약하기</a></li>
					<li class="nav-item"><a class="nav-link menu-font" href="#">예약목록</a></li>
				</ul>
			</nav>
			<div>
			 <img alt="1번" src="/img/test06_banner1.jpg">
			</div>
			<div class="d-flex">
			    <div class="col-4">
			       <h1>실시간 예약하기</h1>
			    </div>		
			    <div class="col-4">
			         <h3>예약확인</h3>
			         <div>
			         <label for="name">이름:</label>
			         <input type="text" id="name" >
			         </div>
			          <div>
			         <label for="phoneNumber">전화번호:</label>
			         <input type="text" id="phoneNumber" >
			         </div>
			         <button>조회하기</button>
			    </div>		
			    <div class="col-4">
			        <tr>
			           <td>예약문의</td>
			           <td>010-0000-1111</td>
			        </tr>
			    </div>		
			
			</div>
			
			
			 <footer>	 
			   <span class="text">제주특별자치도 제주시 애월읍<br>
			   사업자등록번호:111-22-233222/농어촌민박사업자지정/대표:김통목<br>
			   Copyright 2025 tongnamu.All right reserved</span>
			 </footer>
			
		
     </div>
</body>
</html>