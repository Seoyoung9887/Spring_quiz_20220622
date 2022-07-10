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
					<li class="nav-item"><a class="nav-link menu-font" href="lesson06/addBookingView">예약하기</a></li>
					<li class="nav-item"><a class="nav-link menu-font" href="#">예약목록</a></li>
				</ul>
			</nav>
			<span class="text-center m-1"><Strong><h2>예약 하기</h2></Strong></span>
			<div class= "form-group a" >
			   <div>
			      <label class="label" for="name">이름</label><br>
			      <input type="text"  id="name" class="form-control " >
			   </div>
			   <div>
			      <label class="label" for="date">예약날짜</label><br>
			      <input type="text"  id="date" class="form-control " >
			   </div>
			   <div>
			      <label class="label" for="day">숙박일수</label><br>
			      <input type="text"  id="day" class="form-control " >
			   </div>
			   <div>
			      <label class="label" for="headcount">숙박인원</label><br>
			      <input type="text"  id="headcount" class="form-control " >
			   </div>
			   <div>
			      <label class="label" for="phoneNumber">전화번호</label><br>
			      <input type="text"  id="phoneNumber" class="form-control ">
			   </div>
			   <div> 
			      <button type="button" id="b-Btn" class="btn-warning"  width="100">예약하기</button>
			  </div>
			</div>
			
			 <footer>	 
			   <span class="text">제주특별자치도 제주시 애월읍<br>
			   사업자등록번호:111-22-233222/농어촌민박사업자지정/대표:김통목<br>
			   Copyright 2025 tongnamu.All right reserved</span>
			 </footer>
			</div>
			
			
        
        
       
     
     </div>

</body>
</html>